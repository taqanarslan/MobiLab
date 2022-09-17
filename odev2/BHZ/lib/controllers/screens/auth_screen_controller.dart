import 'package:flutter/material.dart';

import '../../models/auth_model.dart';
import '../../utils/services/auth_db.dart';

enum AuthMode { signup, login }

class AuthScreenController {
  AuthScreenController();

  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  ///
  late final FocusNode _emailFocus;
  late final FocusNode _passwordFocus;

  ///
  TextEditingController get emailController => _emailController;

  TextEditingController get passwordController => _passwordController;

  ///
  FocusNode get emailFocus => _emailFocus;

  FocusNode get passwordFocus => _passwordFocus;

  void initControllers() {
    /// init controllers
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _emailFocus = FocusNode();
    _passwordFocus = FocusNode();
  }

  void disposeControllers() {
    /// dispose controllers
    _emailController.dispose();
    _passwordController.dispose();

    ///
    _emailFocus.dispose();
    _passwordFocus.dispose();
  }

  void clearAll() {
    _emailController.clear();
    _passwordController.clear();
  }

  void unfocusAll() {
    _emailFocus.unfocus();
    _passwordFocus.unfocus();
  }

  void submit({
    required String email,
    required String password,
    required BuildContext context,
  }) {
    final AuthUser user = AuthDB.users
        .firstWhere((element) => element.email == email, orElse: () {
      return const AuthUser(password: '', email: '', name: '');
    });
    if (user.email == '') {
      /// Didn't find a user
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("User not found")));
      return;
    }
    if (user.password == password) {
      /// push to Home screen if password matches user;
      Navigator.of(context)
          .pushReplacementNamed('/home', arguments: {'user': user});
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Password is incorrect")));
      return;
    }
  }
}
