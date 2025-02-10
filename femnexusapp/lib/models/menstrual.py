import numpy as np
import pandas as pd
import tensorflow as tf
from tensorflow.keras.models import Sequential, load_model
from tensorflow.keras.layers import LSTM, Dense
from tensorflow.keras.models import load_model
from sklearn.preprocessing import MinMaxScaler
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt
from datetime import datetime, timedelta
from tensorflow.keras.losses import MeanSquaredError
# Load dataset
file_path = "menstrual_cycle_data.csv"  # Update path if needed
df = pd.read_csv(file_path)

# Features and target
features = ['CycleNumber', 'MeanCycleLength', 'LengthofCycle']  # Assuming these are available

# Normalize only the cycle-related data
scaler = MinMaxScaler()
df_scaled = scaler.fit_transform(df[['MeanCycleLength', 'LengthofCycle']])

def create_sequences(data, seq_length):
    X, y = [], []
    for i in range(len(data) - seq_length):
        X.append(data[i:i+seq_length, :-1])
        y.append(data[i+seq_length, -1])
    return np.array(X), np.array(y)

seq_length = 10  # Past 10 cycles for prediction
X, y = create_sequences(df_scaled, seq_length)

# Split into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42, shuffle=False)

# Build LSTM model
model = Sequential([
    LSTM(50, activation='relu', return_sequences=True, input_shape=(seq_length, X.shape[2])),
    LSTM(50, activation='relu'),
    Dense(25, activation='relu'),
    Dense(1)
])

# Compile model
model.compile(optimizer='adam', loss='mse')

# Train model
model.fit(X_train, y_train, epochs=50, batch_size=16, validation_data=(X_test, y_test))

# Save model
model.save("lstm_period_tracker.h5")

# Load model for testing
model = load_model("lstm_period_tracker.h5",custom_objects={'mse':MeanSquaredError})

# Ask user for last known period start date
last_known_date_str = input("Enter your last period start date (YYYY-MM-DD): ")
last_known_date = datetime.strptime(last_known_date_str, "%Y-%m-%d")

# Predict
predictions = model.predict(X_test)

# Inverse transform predictions
predictions_original = scaler.inverse_transform(
    np.hstack((np.zeros((len(predictions), 1)), predictions.reshape(-1, 1)))
)[:, -1]

y_test_original = scaler.inverse_transform(
    np.hstack((np.zeros((len(y_test), 1)), y_test.reshape(-1, 1)))
)[:, -1]

# Predict next period date based on user input
predicted_cycle_length = max(28, min(35, predictions_original[-1]))  # Keeping in a biological range
next_period_date = last_known_date + timedelta(days=int(predicted_cycle_length))

print(f"Predicted Next Period Date: {next_period_date.strftime('%Y-%m-%d')}")

# Plot actual vs predicted
plt.figure(figsize=(10, 5))
plt.plot(y_test_original, label="Actual Cycle Length", marker="o")
plt.plot(predictions_original, label="Predicted Cycle Length", marker="x")
plt.legend()
plt.xlabel("Test Sample")
plt.ylabel("Cycle Length")
plt.title("LSTM Predictions for Period Tracking")
plt.show()