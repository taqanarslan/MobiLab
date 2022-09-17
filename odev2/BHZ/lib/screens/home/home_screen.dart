import 'package:flutter/material.dart';

import '../../models/auth_model.dart';
import '../../utils/constants/margin_const.dart';
import '../../utils/constants/padding_const.dart';
import '../../utils/constants/text_const.dart';
import '../../utils/services/auth_db.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final AuthUser user = arguments['user'];
    const List<AuthUser> userDB = AuthDB.users;
    return Scaffold(
        appBar: AppBar(
          title: Text(TextConst.welcome + user.name),
        ),
        body: ListView.builder(
          padding: PaddingConst.vertical8,
          itemCount: userDB.length,
          itemBuilder: (ctx, i) {
            return Card(
              margin: MarginConst.listTile,
              child: ListTile(
                leading: const CircleAvatar(
                    backgroundImage: NetworkImage('https://picsum.photos/200')),
                title: Text(userDB[i].name),
                subtitle: Text(userDB[i].email),
              ),
            );
          },
        ));
  }
}
