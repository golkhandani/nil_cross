import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

class AppNavigator {
  final GlobalKey<NavigatorState> _navigatorKey;
  AppNavigator(navigatorKey) : _navigatorKey = navigatorKey;

  get _context => _navigatorKey.currentContext;
  StackRouter get stack => AutoRouter.of(_context);

  push(PageRouteInfo<dynamic> route) {
    print(AutoRouter.of(_context).navigationHistory.toString());
    stack.push(route);
  }
}
