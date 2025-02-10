import 'package:flutter/material.dart';
import 'utils/app_routes.dart';

void main() {
  runApp(FemNexusApp());
}

class FemNexusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FemNexus',
      initialRoute: '/',
      routes: AppRoutes.routes,
    );
  }
}
