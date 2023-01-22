import 'package:flutter/material.dart';

class NavigationBarSliverSafeArea extends StatelessWidget {
  const NavigationBarSliverSafeArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverGap(height: NavigationBarSafeArea.height);
  }
}

class NavigationBarSafeArea extends StatelessWidget {
  static const double height = 80;
  const NavigationBarSafeArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Gap(height: NavigationBarSafeArea.height);
  }
}

class SliverGap extends StatelessWidget {
  final double height;
  final double width;
  const SliverGap({
    Key? key,
    this.height = 0,
    this.width = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
        width: width,
      ),
    );
  }
}

class Gap extends StatelessWidget {
  final double height;
  final double width;
  const Gap({
    Key? key,
    this.height = 0,
    this.width = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
