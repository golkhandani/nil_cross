import 'package:flutter/material.dart';

class NavigationBarSliverSafeArea extends StatelessWidget {
  const NavigationBarSliverSafeArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverGap(height: 80);
  }
}

class NavigationBarSafeArea extends StatelessWidget {
  const NavigationBarSafeArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Gap(height: 80);
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
