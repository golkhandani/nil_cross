import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_routing_flow/shared/konstants.dart';

class DashboardLearningPathSingleScreen extends StatefulWidget {
  static const routerName = 'DashboardLearningPathSingleRouter';
  static const routerPath = ':id';

  final String id;
  const DashboardLearningPathSingleScreen({super.key, @PathParam('id') required this.id});

  @override
  State<DashboardLearningPathSingleScreen> createState() => _DashboardLearningPathSingleScreenState();
}

class _DashboardLearningPathSingleScreenState extends State<DashboardLearningPathSingleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar(
        title: Text('Dashboard Learning Page! ${widget.id}'),
      ),
      body: Center(child: Text('Dashboard Learning Page! ${widget.id}')),
    );
  }
}
