import 'package:flutter/material.dart';

class DashboardForksScreen extends StatefulWidget {
  static const routerName = 'DashboardForksRouter';
  static const routerPath = 'forks';
  const DashboardForksScreen({super.key});

  @override
  State<DashboardForksScreen> createState() => _DashboardForksScreenState();
}

class _DashboardForksScreenState extends State<DashboardForksScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Dashboard Forks Page!')),
    );
  }
}
