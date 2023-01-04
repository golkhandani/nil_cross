import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_navigator.dart';

const height = 0;
const kHeadingTextStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

const kTitleTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const kInputDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  ),
  labelStyle: TextStyle(color: Colors.orange),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
    borderSide: BorderSide(
      color: Color.fromRGBO(250, 225, 175, 1),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
    borderSide: BorderSide(color: Colors.orange),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
    borderSide: BorderSide(color: Colors.red),
  ),
);

const kLoadingBox = Center(
  child: SizedBox(
    height: 24,
    width: 24,
    child: CircularProgressIndicator(
      color: Colors.black,
      strokeWidth: 2,
    ),
  ),
);

const kNotFoundBox = Center(
  child: SizedBox(
    height: 24,
    width: 24,
    child: Text('not found'),
  ),
);

AutoLeadingButton? kAppBarLeading() {
  var leading = locator.get<AppNavigator>().stack.canPop()
      ? const AutoLeadingButton(
          ignorePagelessRoutes: true,
          showIfChildCanPop: true,
          showIfParentCanPop: true,
          color: Colors.black,
        )
      : null;
  return leading;
}

AppBar kAppBar({required Widget title}) {
  return AppBar(
    leading: kAppBarLeading(),
    title: title,
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    foregroundColor: Colors.black,
  );
}
