import 'package:flutter/material.dart';

class DashboarProfileScreen extends StatefulWidget {
  static const routerName = 'DashboardProfileRouter';
  static const routerPath = 'profile';
  const DashboarProfileScreen({super.key});

  @override
  State<DashboarProfileScreen> createState() => _DashboarProfileScreenState();
}

class _DashboarProfileScreenState extends State<DashboarProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Dashboard Profile Page!')),
    );
  }
}
