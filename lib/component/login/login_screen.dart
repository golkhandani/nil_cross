import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_routing_flow/component/login/bloc/login_bloc.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/shared/konstants.dart';
import 'package:test_routing_flow/shared/texts.dart';

class LoginScreen extends StatefulWidget {
  static const routerName = 'LoginRouter';
  static const routerPath = '/login';

  final PageRouteInfo<dynamic>? successRoute;
  const LoginScreen({
    super.key,
    this.successRoute,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginBloc _loginBloc = locator.get();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (widget.successRoute != null) {
      _loginBloc.setSuccessRoute(widget.successRoute!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      bloc: _loginBloc,
      builder: (context, state) {
        return Scaffold(
          body: Form(
            key: _formKey,
            child: Center(
              child: SizedBox(
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: kInputDecoration.copyWith(
                          labelText: LoginText.enterPassword.text,
                        ),
                        // The validator receives the text that the user has entered.
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: kInputDecoration.copyWith(
                          labelText: LoginText.enterPassword.text,
                        ),
                        // The validator receives the text that the user has entered.
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        ),
                        elevation: 1.0,
                        height: 54,
                        minWidth: double.infinity,
                        color: Colors.orangeAccent,
                        hoverColor: Colors.orange,
                        highlightColor: Colors.deepOrangeAccent,
                        child: BlocBuilder<LoginBloc, LoginState>(
                          bloc: _loginBloc,
                          builder: (context, state) {
                            return state.isLoading ? kLoadingBox : Text(LoginText.loginBtn.text);
                          },
                        ),
                        onPressed: () => _loginBloc.add(
                          const LoginEvent.viaEmail(email: 'email', password: 'password'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
