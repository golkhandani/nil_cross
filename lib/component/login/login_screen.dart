import 'dart:math';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
import 'package:test_routing_flow/common/ui/logo.dart';
import 'package:test_routing_flow/component/home/bloc/home_bloc.dart';
import 'package:test_routing_flow/component/login/bloc/login_bloc.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/shared/konstants.dart';
import 'package:test_routing_flow/shared/texts.dart';

class LoginScreen extends StatefulWidget {
  static const routerName = 'LoginRouter';
  static const routerPath = '/login';

  final String? successRoute;
  const LoginScreen({
    super.key,
    this.successRoute,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final HomeBloc _homeBloc = locator.get();
  final LoginBloc _loginBloc = locator.get();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (_homeBloc.state.home == null) {
      _homeBloc.add(const HomeEvent.loadData());
    }
    if (widget.successRoute != null) {
      _loginBloc.setSuccessRoute(widget.successRoute!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _homeBloc),
        BlocProvider.value(value: _loginBloc),
      ],
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return kLoadingBox(context);
                    }
                    final homeData = state.home;
                    if (homeData == null) {
                      return Container(color: Colors.black);
                    }

                    return CachedNetworkImage(
                      imageUrl: homeData.banner.image,
                      fit: BoxFit.cover,
                      height: context.height,
                      width: context.width,
                    );
                  },
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
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return Form(
                      key: _formKey,
                      child: Center(
                        child: Container(
                          width: context.isSmall ? double.infinity : 420,
                          margin: EdgeInsets.all(16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: context.isSmall
                                ? CrossAxisAlignment.center
                                : CrossAxisAlignment.end,
                            children: [
                              TextFormField(
                                decoration: kInputDecoration.copyWith(
                                  hintText: LoginText.enterUsername.text,
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                decoration: kInputDecoration.copyWith(
                                  hintText: LoginText.enterPassword.text,
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 32),
                              NitButton(
                                boxConstraints: BoxConstraints(
                                  maxWidth:
                                      context.isSmall ? double.infinity : 160,
                                  minHeight: 54,
                                ),
                                onPressed: () => _loginBloc.add(
                                  const LoginEvent.viaEmail(
                                      email: 'email', password: 'password'),
                                ),
                                child: state.isLoading
                                    ? kLoadingBox(context)
                                    : Text(LoginText.loginBtn.text),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                      foregroundColor: MaterialStateProperty.all(Colors.amber),
                    ),
                    onPressed: () => {},
                    child: Text(
                      'Terms and conditions!',
                      style: kContentTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class NitButton extends StatelessWidget {
  const NitButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.boxConstraints = const BoxConstraints(
      maxHeight: 54,
      maxWidth: 240,
      minHeight: 54,
      minWidth: 160,
    ),
  }) : super(key: key);

  final Widget child;
  final VoidCallback onPressed;
  final BoxConstraints boxConstraints;
  // final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: boxConstraints,
      child: MaterialButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        elevation: 1.0,
        height: 54,
        minWidth: double.infinity,
        color: Colors.orangeAccent,
        hoverColor: Colors.orange,
        highlightColor: Colors.deepOrangeAccent,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
