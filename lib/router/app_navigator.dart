import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

class AppNavigator {
  final GlobalKey<NavigatorState> _navigatorKey;
  AppNavigator(navigatorKey) : _navigatorKey = navigatorKey;

  BuildContext get _context => _navigatorKey.currentContext!;
  InitializedVRouterSailor get stack => VRouter.of(_context);

  back() {
    stack.historyBack();
  }

  push(String name, {Map<String, String> pathParameters = const {}}) {
    stack.toNamed(name, pathParameters: pathParameters, isReplacement: false);
  }

  replace(String name) {
    stack.toNamed(name, isReplacement: true);
  }

  Future<bool?> showAlertDialog(Widget alertDialog) async {
    return showDialog<bool>(
      context: _context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}

class LogoutConfirmationDialog extends StatelessWidget {
  const LogoutConfirmationDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // <-- SEE HERE
      title: const Text('Cancel booking'),
      content: SingleChildScrollView(
        child: ListBody(
          children: const <Widget>[
            Text('Are you sure want to cancel booking?'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('No'),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
        TextButton(
          child: const Text('Yes'),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
      ],
    );
  }
}
