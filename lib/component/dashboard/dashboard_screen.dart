import 'dart:math';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
import 'package:test_routing_flow/component/authentication/bloc/authentication_bloc.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_forks/dashboard_forks_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/dashboard_learning_path_list/dashboard_learning_path_list_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_settings/dashboard_settings_screen.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_router.dart';

import 'package:flutter/material.dart';
import 'package:test_routing_flow/shared/konstants.dart';
import 'package:vrouter/vrouter.dart';

class ApplicationPage {
  ApplicationPage({
    required this.index,
    required this.widget,
    required this.name,
    required this.path,
    required this.iconData,
    this.color,
  });

  int index;
  Widget widget;
  String name;
  String path;
  IconData iconData;
  Color? color = Colors.amber;
  // PageRouteInfo? pageRouteInfo;
}

final List<ApplicationPage> pages = [
  ApplicationPage(
    index: 0,
    widget: Container(
      color: Colors.pink[50],
    ),
    name: "Paths",
    path: DashboardLearningPathListScreen.routerPath,
    iconData: Icons.list,
    color: Colors.green,
    //pageRouteInfo: const DashboardLearningPathListRouter(),
  ),
  ApplicationPage(
    index: 1,
    widget: Container(
      color: Colors.purple[50],
    ),
    name: "Forks",
    path: DashboardForksScreen.routerPath,
    iconData: Icons.list_alt,
    color: Colors.cyan,
    //pageRouteInfo: const DashboardForksRouter(),
  ),
  ApplicationPage(
    index: 2,
    widget: Container(
      color: Colors.purple[50],
    ),
    name: "Setting",
    path: DashboardSettingsScreen.routerPath,
    iconData: Icons.settings,
    color: Colors.amber,
    //pageRouteInfo: const DashboardSettingsRouter(),
  ),
];

class DashboardScreen extends StatefulWidget {
  static const routerName = 'DashboardRouter';
  static const routerPath = '/dashboard';
  final Widget child;
  const DashboardScreen({super.key, required this.child});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final currentIndex =
        pages.indexWhere((page) => context.vRouter.url.contains(page.path));
    return Scaffold(
      body: Stack(
        children: [
          widget.child,
          ButtonNavigationContainer(
            backdropColor: context.theme.backgroundColor,
            navigationItems: pages.map(
              (page) {
                final index = pages.indexOf(page);
                return ButtonNavigationItemContainer(
                  accentColor: page.color ?? theme.primaryColor,
                  disabledColor: theme.disabledColor,
                  label: page.name,
                  icon: page.iconData,
                  onTap: () {
                    context.vRouter.to(page.path);
                  },
                  index: index,
                  isSelected: currentIndex == index,
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}

class ButtonNavigationContainer extends StatelessWidget {
  const ButtonNavigationContainer({
    Key? key,
    this.height = 64,
    this.backdropColor = Colors.white54,
    this.borderRadius = 10,
    required this.navigationItems,
  }) : super(key: key);

  final double height;
  final Color backdropColor;
  final double borderRadius;
  final List<Widget> navigationItems;

  @override
  Widget build(BuildContext context) {
    final width = (context.isLandscape
            ? max(
                navigationItems.length * 100,
                context.mediumPortraitWidth,
              )
            : double.infinity)
        .toDouble();
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
              tileMode: TileMode.mirror,
            ),
            child: Container(
              height: height,
              width: width - 32,
              decoration: BoxDecoration(
                color: backdropColor,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: navigationItems,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonNavigationItemContainer extends StatelessWidget {
  const ButtonNavigationItemContainer({
    Key? key,
    required this.onTap,
    required this.index,
    required this.isSelected,
    required this.icon,
    required this.accentColor,
    required this.label,
    required this.disabledColor,
  }) : super(key: key);

  final VoidCallback onTap;
  final int index;
  final bool isSelected;
  final IconData icon;
  final Color accentColor;
  final Color disabledColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 4,
        ),
        width: 64,
        color: Colors.transparent,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: isSelected ? 32 : 24,
                color: isSelected ? accentColor : disabledColor,
              ),
              Text(
                label,
                style: kHeadingTextStyle.copyWith(
                  color: isSelected ? accentColor : disabledColor,
                  fontSize: isSelected ? 16 : 12,
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
      ),
    );
  }
}
