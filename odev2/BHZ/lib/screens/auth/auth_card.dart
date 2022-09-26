import 'package:flutter/material.dart';
import '../../controllers/screens/auth_screen_controller.dart';
import '../../utils/constants/padding_const.dart';
import '../../utils/constants/text_const.dart';
import '../../widgets/boxes/box_widget.dart';
import '../../widgets/buttons/k_text_button.dart';
import '../../widgets/form_fields/auth_form_field.dart';

class AuthCard extends StatefulWidget {
  const AuthCard({Key? key}) : super(key: key);

  @override
  State<AuthCard> createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  late final AuthScreenController _auth;

  @override
  void initState() {
    super.initState();
    _auth = AuthScreenController();
    _auth.initControllers();
  }

  @override
  void dispose() {
    super.dispose();
    _auth.disposeControllers();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        _auth.unfocusAll();
      },
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            Padding(
              padding: PaddingConst.horizontal32,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomWidget.sizedBox150,
                  const Icon(
                    Icons.account_circle,
                    size: 90,
                    color: Colors.white,
                  ),
                  CustomWidget.sizedBox60,
                  AuthFormField(
                    controller: _auth.name,
                    focusNode: _auth.nameFocus,
                    hintText: TextConst.name,
                    obscureText: false,
                    isEnabled: true,
                    keyboardType: TextInputType.emailAddress,
                    onSubmitted: (String? val) {
                      _auth.nameFocus.unfocus();
                      FocusScope.of(context).requestFocus(_auth.passwordFocus);
                    },
                  ),
                  AuthFormField(
                    controller: _auth.passwordController,
                    focusNode: _auth.passwordFocus,
                    hintText: TextConst.password,
                    obscureText: true,
                    isEnabled: true,
                    keyboardType: TextInputType.text,
                    onSubmitted: (String? val) {
                      _auth.passwordFocus.unfocus();
                      _auth.submit(context: context);
                    },
                  ),
                  CustomWidget.sizedBox30,
                  KTextButton(
                    text: TextConst.signIn,
                    onTap: () {
                      _auth.submit(context: context);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
