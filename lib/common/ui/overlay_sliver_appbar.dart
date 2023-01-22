import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_navigator.dart';
import 'package:test_routing_flow/shared/konstants.dart';

class SliverPersistAppbar extends StatelessWidget {
  static const double height = 56;
  final String? backgroundImage;
  final Color? backgroundColor;
  final double expandedHeight;
  final double? collapsedHeight;
  final bool backButtonEnable;
  final Color backButtonColor;
  final bool pinned;
  final bool floating;

  final String? title;
  final Widget? child;

  final double elevation;

  const SliverPersistAppbar({
    Key? key,
    this.backgroundImage,
    required this.expandedHeight,
    required this.backButtonEnable,
    this.backButtonColor = Colors.white,
    this.title,
    this.child,
    this.pinned = true,
    this.floating = true,
    this.backgroundColor,
    this.collapsedHeight = SliverPersistAppbar.height,
    this.elevation = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: OverlaySliverAppbar(
        backgroundColor: backgroundColor,
        backButtonEnable: backButtonEnable,
        backButtonColor: backButtonColor,
        expandedHeight: expandedHeight,
        collapsedHeight: collapsedHeight,
        backgroundImage: backgroundImage,
        title: title,
        child: child,
        elevation: elevation,
      ),
      pinned: pinned,
      floating: floating,
    );
  }
}

class OverlaySliverAppbar extends SliverPersistentHeaderDelegate {
  final String? backgroundImage;
  final Color? backgroundColor;
  final double expandedHeight;
  final double? collapsedHeight;
  final bool backButtonEnable;
  final Color backButtonColor;

  final String? title;
  final Widget? child;

  final double elevation;

  OverlaySliverAppbar({
    required this.expandedHeight,
    this.collapsedHeight,
    this.backgroundColor,
    this.backgroundImage,
    this.title,
    this.backButtonEnable = true,
    this.backButtonColor = Colors.red,
    this.child,
    this.elevation = 10,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final navigator = locator.get<AppNavigator>();
    final offset = expandedHeight;
    final opacityLimit = (3 * shrinkOffset) - offset;
    final double opacity = max(1 - opacityLimit / expandedHeight, 0);
    final double childOpacity = opacityLimit > 0 ? opacity : 1;
    final double backgroundOpacity = opacityLimit > 0 ? 1 - opacity : 0;
    return Material(
      color: backgroundColor,
      elevation: elevation,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          if (backgroundImage != null)
            CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: backgroundImage!,
              placeholder: (context, url) => kLoadingBox,
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          Opacity(
            opacity: backgroundOpacity,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                  tileMode: TileMode.mirror,
                ),
                child: Container(
                  color: context.theme.backgroundColor
                      .withOpacity(backgroundOpacity),
                ),
              ),
            ),
          ),
          if (title != null)
            Center(
              child: Opacity(
                opacity: expandedHeight == collapsedHeight
                    ? 1
                    : shrinkOffset / expandedHeight,
                child: Text(
                  title!,
                  style: kTitleTextStyle.copyWith(
                    color: context.textTheme.color,
                  ),
                ),
              ),
            ),
          Positioned(
            top: expandedHeight - shrinkOffset - 24,
            child: Container(
              color: Colors.transparent,
              width: context.width,
              child: Opacity(
                opacity: childOpacity,
                child: child,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: navigator.stack.canNavigateBack && backButtonEnable
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BackButton(
                      onPressed: () => {
                        navigator.back(),
                      },
                      color: backButtonColor,
                    ),
                  )
                : null,
          ),
        ],
      ),
    );
  }

  @override
  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent =>
      title != null || backButtonEnable ? kToolbarHeight : collapsedHeight ?? 0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
