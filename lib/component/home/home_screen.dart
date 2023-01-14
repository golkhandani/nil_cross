import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_routing_flow/common/back_button_visibility_enum.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
import 'package:test_routing_flow/common/ui/logo.dart';
import 'package:test_routing_flow/component/authentication/service/authentication_service.dart';
import 'package:test_routing_flow/component/home/bloc/home_bloc.dart';
import 'package:test_routing_flow/component/login/login_screen.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/shared/konstants.dart';

class HomeScreen extends StatefulWidget {
  static const routerName = 'HomeRouter';
  static const routerPath = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeBloc _homeBloc = locator.get();
  final AuthenticationService _authenticationService = locator.get();
  @override
  void initState() {
    _homeBloc.add(const HomeEvent.loadData());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: _homeBloc,
      builder: (context, state) {
        final isAuthenticated = _authenticationService.isAuthenticated;
        if (state.isLoading) {
          return kLoadingBox;
        }
        final homeData = state.home;
        if (homeData == null) {
          return kLoadingBox;
        }
        return Scaffold(
          body: Stack(
            children: [
              CachedNetworkImage(
                imageUrl: homeData.banner.image,
                fit: BoxFit.cover,
                height: context.height,
                width: context.width,
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 2,
                  sigmaY: 2,
                  tileMode: TileMode.mirror,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                  ),
                ),
              ),
              Positioned(
                top: 100,
                width: context.width,
                child: const Align(
                  alignment: Alignment.topCenter,
                  child: Logo(
                    size: 100,
                  ),
                ),
              ),
              Positioned(
                top: context.height / 2,
                child: Container(
                  color: Colors.transparent,
                  constraints:
                      BoxConstraints(maxWidth: (context.width - 32) / (context.isPortrait ? 1 : 2)),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        homeData.banner.title,
                        style: kHeadingTextStyle.copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        homeData.banner.description,
                        softWrap: true,
                        style: kContentTextStyle.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
                right: 16,
                child: NitButton(
                  onPressed: () {
                    _homeBloc.add(
                      !isAuthenticated
                          ? const HomeEvent.goToLogin()
                          : const HomeEvent.goToDashboard(),
                    );
                  },
                  child: Text(!isAuthenticated ? "Login" : "Dashboard"),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
