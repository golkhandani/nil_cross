import 'package:flutter/material.dart';

class DashboardProfileScreen extends StatefulWidget {
  static const routerName = 'DashboardProfileRouter';
  static const routerPath = '/profile';
  const DashboardProfileScreen({super.key});

  @override
  State<DashboardProfileScreen> createState() => _DashboardProfileScreenState();
}

class _DashboardProfileScreenState extends State<DashboardProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Dashboard Profile Page!')),
    );
  }
}
