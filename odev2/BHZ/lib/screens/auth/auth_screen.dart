import 'package:flutter/material.dart';
import 'auth_card.dart';


class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            Image.network(
              'https://picsum.photos/id/238/800',
              fit: BoxFit.fitHeight,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black.withOpacity(.9),
            ),
            const AuthCard(),
          ],
        ));
  }
}
