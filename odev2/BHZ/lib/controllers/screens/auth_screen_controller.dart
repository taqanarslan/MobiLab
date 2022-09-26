import 'package:flutter/material.dart';

import '../../models/auth_model.dart';
import '../../utils/services/auth_db.dart';

enum AuthMode { signup, login }

class AuthScreenController {
  AuthScreenController();

  late final TextEditingController _nameController;
  late final TextEditingController _passwordController;

  ///
  late final FocusNode _nameFocus;
  late final FocusNode _passwordFocus;

  ///
  TextEditingController get name => _nameController;

  TextEditingController get passwordController => _passwordController;

  ///
  FocusNode get nameFocus => _nameFocus;

  FocusNode get passwordFocus => _passwordFocus;

  void initControllers() {
    /// init controllers
    _nameController = TextEditingController();
    _passwordController = TextEditingController();
    _nameFocus = FocusNode();
    _passwordFocus = FocusNode();
  }

  void disposeControllers() {
    /// dispose controllers
    _nameController.dispose();
    _passwordController.dispose();

    ///
    _nameFocus.dispose();
    _passwordFocus.dispose();
  }

  void clearAll() {
    _nameController.clear();
    _passwordController.clear();
  }

  void unfocusAll() {
    _nameFocus.unfocus();
    _passwordFocus.unfocus();
  }

  void submit({
    required BuildContext context,
  }) {
    final AuthUser user = AuthDB.users.firstWhere(
        (element) => element.name == _nameController.text.trim(), orElse: () {
      return const AuthUser(password: '', email: '', name: '');
    });
    if (user.name == '') {
      /// Didn't find a user
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("User not found")));
      return;
    }
    if (user.password == _passwordController.text.trim()) {
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
