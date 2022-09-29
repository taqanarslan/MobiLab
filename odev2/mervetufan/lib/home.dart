import 'package:flutter/material.dart';
import 'package:mervetufan/components/textfield.dart';
import 'package:mervetufan/helper/sizedbox.dart';

import 'components/submit_button.dart';
import 'model_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String name = 'merve';
  final String surname = 'tufan';
  final String errornamemessage = 'Wrong Name';
  final String errorsurnnamemessage = 'Wrong Surname';
  final String logintext = 'Login Page';
  final double _buttonwidth = 100;
  final double  _buttonheight = 30;

  @override
  Widget build(BuildContext context) {
    const String submit = 'SUBMİT';

    return Scaffold(
        appBar: AppBar(
          title: Text(logintext),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyCustomTextField(
                  validator: (value) {
                    if (value != name) {
                      return errornamemessage;
                    }
                  },
                ),
                sizedbox(),
                MyCustomTextField(
                  validator: (value) {
                    if (value != surname) {
                      return errorsurnnamemessage;
                    }
                  },
                ),
                sizedbox(),
                MySubmitButton(
                  onValid: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NewPage()),
                    );
                  },
                  buttontext: submit,
                  height: _buttonheight,
                  width: _buttonwidth,
                ), //yenisayfayagecis
              ],
            ),
          ),
        ));
  }

 
  
}


