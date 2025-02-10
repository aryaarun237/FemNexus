import 'package:flutter/material.dart';
import '../screens/home.dart';
import '../screens/signin.dart';
import '../screens/signup.dart';
import '../screens/health.dart';
import '../screens/career.dart';
import '../screens/sos.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => Home(),
    '/signin': (context) => Signin(),
    '/signup': (context) => Signup(),
    '/health': (context) => Health(),
    '/career': (context) => Career(),
    '/sos': (context) => Sos(),
  };
}
