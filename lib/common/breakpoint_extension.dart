import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_routing_flow/common/ui/overlay_sliver_appbar.dart';
import 'package:test_routing_flow/common/ui/safe_area.dart';

enum ScreenType {
  smallPortrait,
  smallLandscape,

  mediumPortrait,
  mediumLandscape,

  largePortrait,
  largeLandscape,
}

extension BuildContextExtension on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;

  double get width => screenSize.width;
  double get height => screenSize.height;

  double get safeHeight =>
      height - NavigationBarSafeArea.height - SliverPersistAppbar.height;

  bool get isPhone => !kIsWeb && (Platform.isAndroid || Platform.isIOS);
  bool get isDesktop =>
      !kIsWeb || Platform.isLinux || Platform.isMacOS || Platform.isWindows;
  bool get isWeb => kIsWeb;
  bool get isPortrait => !isLandscape;

  bool get isLandscape => screenSize.width > screenSize.height;

  double get virtualWidth => isPortrait ? screenSize.width : screenSize.height;

  double get smallPortraitWidth => 360;
  double get mediumPortraitWidth => 400;
  double get largePortraitWidth => 600;

  ScreenType get screenType {
    final ScreenType type = virtualWidth < 360
        ? ScreenType.smallPortrait
        : virtualWidth < 400
            ? ScreenType.mediumPortrait
            : virtualWidth < 600
                ? ScreenType.mediumPortrait
                : ScreenType.largePortrait;
    return type;
  }

  bool get isSmall => virtualWidth < 640;
  bool get isMedium => 641 < virtualWidth && virtualWidth < 1007;
  bool get isLarge => 1008 < virtualWidth;

  ThemeData get theme => Theme.of(this);
  TextStyle get textTheme => theme.textTheme.bodyMedium!;
}
