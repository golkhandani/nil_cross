import 'dart:math';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
import 'package:test_routing_flow/component/authentication/bloc/authentication_bloc.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_router.dart';

import 'package:flutter/material.dart';
import 'package:test_routing_flow/shared/konstants.dart';

class ApplicationPage {
  ApplicationPage({
    required this.widget,
    required this.name,
    required this.path,
    required this.iconData,
    required this.pageRouteInfo,
    this.color,
  });

  Widget widget;
  String name;
  String path;
  IconData iconData;
  Color? color = Colors.amber;
  PageRouteInfo pageRouteInfo;
}

final List<ApplicationPage> pages = [
  ApplicationPage(
    widget: Container(
      color: Colors.pink[50],
    ),
    name: "Paths",
    path: 'list',
    iconData: Icons.list,
    color: Colors.green,
    pageRouteInfo: const DashboardLearningPathListRouter(),
  ),
  ApplicationPage(
    widget: Container(
      color: Colors.purple[50],
    ),
    name: "Forks",
    path: 'list',
    iconData: Icons.list_alt,
    color: Colors.cyan,
    pageRouteInfo: const DashboardForksRouter(),
  ),
  ApplicationPage(
    widget: Container(
      color: Colors.purple[50],
    ),
    name: "Setting",
    path: 'list',
    iconData: Icons.settings,
    color: Colors.amber,
    pageRouteInfo: const DashboardSettingsRouter(),
  ),
];

class DashboardScreen extends StatefulWidget {
  static const routerName = 'DashboardRouter';
  static const routerPath = '/dashboard';
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      bloc: locator.get(),
      builder: (context, state) {
        final theme = context.theme;
        return AutoTabsRouter(
          // list of your tab routes
          // routes used here must be declaraed as children
          // routes of /dashboard
          homeIndex: 2,
          routes: pages.map((e) => e.pageRouteInfo).toList(),

          builder: (context, child, animation) {
            // obtain the scoped TabsRouter controller using context
            final tabsRouter = AutoTabsRouter.of(context);

            // Here we're building our Scaffold inside of AutoTabsRouter
            // to access the tabsRouter controller provided in this context
            //
            //alterntivly you could use a global key
            return Scaffold(
              body: Stack(
                children: [
                  FadeTransition(
                    opacity: animation,
                    // the passed child is techinaclly our animated selected-tab page
                    child: child,
                  ),
                  ButtonNavigationContainer(
                    backdropColor: theme.scaffoldBackgroundColor.withOpacity(0.9),
                    tabsRouter: tabsRouter,
                    navigationItems: pages.map(
                      (page) {
                        final index = pages.indexOf(page);
                        var isSelected = index == tabsRouter.activeIndex;
                        return ButtonNavigationItemContainer(
                          accentColor: page.color ?? theme.primaryColor,
                          disabledColor: theme.disabledColor,
                          label: page.name,
                          icon: page.iconData,
                          onTap: () {
                            tabsRouter.setActiveIndex(index);
                          },
                          index: index,
                          isSelected: isSelected,
                        );
                      },
                    ).toList(),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class ButtonNavigationContainer extends StatelessWidget {
  const ButtonNavigationContainer({
    Key? key,
    required this.tabsRouter,
    this.height = 64,
    this.backdropColor = Colors.white54,
    this.borderRadius = 10,
    required this.navigationItems,
  }) : super(key: key);

  final TabsRouter tabsRouter;
  final double height;
  final Color backdropColor;
  final double borderRadius;
  final List<Widget> navigationItems;

  @override
  Widget build(BuildContext context) {
    // final gap = MediaQuery.of(context).size.width - (navigationItems.length * 100);
    // final horizontalMargin = (gap > 16 ? gap / 2 : 16).floorToDouble();
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
              width: min(navigationItems.length * 100, 400),
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
                size: isSelected ? 40 : 25,
                color: isSelected ? accentColor : disabledColor,
              ),
              Text(
                label,
                style: kHeadingTextStyle.copyWith(
                  color: isSelected ? accentColor : disabledColor,
                  fontSize: isSelected ? 12 : 10,
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
      ),
    );
  }
}
