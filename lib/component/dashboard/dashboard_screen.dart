import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:test_routing_flow/component/authentication/bloc/authentication_bloc.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_router.dart';

import 'package:flutter/material.dart';

class ApplicationPage {
  ApplicationPage({
    required this.widget,
    required this.name,
    required this.path,
    required this.iconData,
    this.color,
  });

  Widget widget;
  String name;
  String path;
  IconData iconData;
  Color? color = Colors.amber;
}

final List<ApplicationPage> pages = [
  ApplicationPage(
    widget: Container(
      color: Colors.pink[50],
    ),
    name: "Drink",
    path: 'list',
    iconData: Icons.people_outline_sharp,
    color: Colors.pink,
  ),
  ApplicationPage(
    widget: Container(
      color: Colors.purple[50],
    ),
    name: "Favourite",
    path: 'list',
    iconData: Icons.people_outline_sharp,
    color: Colors.purple,
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
        return AutoTabsRouter(
          // list of your tab routes
          // routes used here must be declaraed as children
          // routes of /dashboard
          routes: const [
            DashboardLearningPathListRouter(),
            DashboardProfileRouter(),
          ],

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
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10,
                                tileMode: TileMode.mirror,
                              ),
                              child: Container(
                                height: 54,
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: pages.map((page) {
                                    final index = pages.indexOf(page);
                                    var isSelected = index == tabsRouter.activeIndex;
                                    return GestureDetector(
                                      onTap: () {
                                        tabsRouter.setActiveIndex(index);
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 4,
                                        ),
                                        width: (MediaQuery.of(context).size.width - 240) / 2,
                                        color: Colors.transparent,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
                                          Icon(
                                            page.iconData,
                                            size: isSelected ? 30 : 20,
                                            color: isSelected ? page.color : Colors.grey,
                                          ),
                                          Text(
                                            page.name,
                                            style: TextStyle(
                                              color: isSelected ? page.color : Colors.grey,
                                              fontSize: isSelected ? 12 : 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ]),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ))),
                ],
              ),
              // bottomNavigationBar: BottomNavigationBar(
              //   currentIndex: tabsRouter.activeIndex,
              //   onTap: (index) {
              //     // here we switch between tabs
              //     tabsRouter.setActiveIndex(index);
              //   },
              //   items: const [
              //     BottomNavigationBarItem(label: 'List', icon: Icon(Icons.list)),
              //     BottomNavigationBarItem(label: 'Users', icon: Icon(Icons.people)),
              //   ],
              // ),
              // bottomNavigationBar: FloatingNavigationBar(
              //   backgroundColor: Colors.black87,
              //   barHeight: 80.0,
              //   barWidth: MediaQuery.of(context).size.width - 40.0,
              //   iconColor: Colors.white,
              //   textStyle: TextStyle(
              //     color: Colors.white,
              //     fontSize: 14.0,
              //   ),
              //   iconSize: 20.0,
              //   indicatorColor: Colors.white,
              //   indicatorHeight: 5,
              //   indicatorWidth: 14.0,
              //   items: [
              //     NavBarItems(
              //       icon: Icons.list,
              //       title: "List",
              //     ),
              //     NavBarItems(
              //       icon: Icons.people,
              //       title: "Users",
              //     ),
              //   ],
              //   onChanged: (index) {
              //     tabsRouter.setActiveIndex(index);
              //   },
              // ),
              // bottomNavigationBar: SnakeNavigationBar.color(
              //   behaviour: SnakeBarBehaviour.floating,
              //   snakeShape: SnakeShape.circle,
              //   // shape: bottomBarShape,
              //   // padding: padding,

              //   // ///configuration for SnakeNavigationBar.color
              //   snakeViewColor: Colors.black,
              //   selectedItemColor: Colors.limeAccent,
              //   unselectedItemColor: Colors.amber,

              //   // ///configuration for SnakeNavigationBar.gradient
              //   shadowColor: Colors.red,
              //   // //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
              //   // //unselectedItemGradient: unselectedGradient,

              //   showUnselectedLabels: true,
              //   showSelectedLabels: true,

              //   currentIndex: tabsRouter.activeIndex,
              //   onTap: (index) {
              //     tabsRouter.setActiveIndex(index);
              //   },
              //   items: const [
              //     BottomNavigationBarItem(label: 'List', icon: Icon(Icons.list)),
              //     BottomNavigationBarItem(label: 'Users', icon: Icon(Icons.people)),
              //   ],
              // ),
            );
          },
        );
      },
    );
  }
}
