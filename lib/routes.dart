import 'package:flutter/material.dart';
import 'package:shopping_kit/views/auth/sign_up.dart';

class Routes {
  static Map<String, WidgetBuilder> routes = {
    SignUp.tag: (context) => SignUp()
  };
}
