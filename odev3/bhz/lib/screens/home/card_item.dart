
import 'package:flutter/material.dart';

import '../../models/user_model.dart';
import '../../utils/constants/margin_const.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: MarginConst.listTile,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage('https://picsum.photos/200'),
        ),
        title: Text(user.name),
        subtitle: Text(user.company.name),
      ),
    );
  }
}
