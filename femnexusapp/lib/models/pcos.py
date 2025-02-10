import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from imblearn.over_sampling import SMOTE
from xgboost import XGBClassifier
from sklearn.metrics import accuracy_score, confusion_matrix

# Load dataset
df = pd.read_csv("PCOS.csv")

# Drop unnecessary columns
df = df.drop(columns=['Exercise_Type', 'Exercise_Benefit'])

# Define features and target
X = df.drop(columns=['PCOS'])
y = df['PCOS'].map({0: 0, 1: 1, 2: 1})  # Ensure binary labels

# Split dataset
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Apply SMOTE for class balancing
smote = SMOTE(sampling_strategy=0.75, random_state=42, k_neighbors=3)
X_train, y_train = smote.fit_resample(X_train, y_train)

# Feature Scaling
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)

# Train XGBoost
model = XGBClassifier(n_estimators=50, learning_rate=0.05, max_depth=3, reg_lambda=1, reg_alpha=0.5, random_state=42)
model.fit(X_train, y_train)

# Evaluate Model
y_train_pred = model.predict(X_train)
y_test_pred = model.predict(X_test)

train_accuracy = accuracy_score(y_train, y_train_pred)
test_accuracy = accuracy_score(y_test, y_test_pred)

print(f"Training Accuracy: {train_accuracy * 100:.2f}%")
print(f"Test Accuracy: {test_accuracy * 100:.2f}%")

# Confusion Matrix
plt.figure(figsize=(6, 4))
conf_matrix = confusion_matrix(y_test, y_test_pred)
sns.heatmap(conf_matrix, annot=True, fmt='d', cmap='Blues', xticklabels=["No PCOS", "PCOS"], yticklabels=["No PCOS", "PCOS"])
plt.xlabel("Predicted")
plt.ylabel("Actual")
plt.title("Confusion Matrix")
plt.show()

# Feature Importance (Filter Less Important Features)
feature_importance = model.feature_importances_
feature_names = X.columns  
sorted_indices = np.argsort(feature_importance)[::-1]

# Select only important features
important_feature_indices = [i for i in sorted_indices if feature_importance[i] > 0.01]
important_features = [feature_names[i] for i in important_feature_indices]

# Re-scale only important features
X_train_important = scaler.fit_transform(X_train[:, important_feature_indices])
X_test_important = scaler.transform(X_test[:, important_feature_indices])

# Retrain model with selected features
model.fit(X_train_important, y_train)

# Prediction Function (Fixed Feature Count)
def predict_pcos():
    print("Enter the following details:")
    user_data = []
    for col in important_features:  # Use only important features
        value = float(input(f"{col}: "))  
        user_data.append(value)
    
    user_data = np.array(user_data).reshape(1, -1)
    user_data = scaler.transform(user_data)  # Now correctly scaled
    prediction = model.predict(user_data)
    
    result = "PCOS Positive" if prediction[0] == 1 else "PCOS Negative"
    print(f"Prediction: {result}")

# Run Prediction
predict_pcos()
