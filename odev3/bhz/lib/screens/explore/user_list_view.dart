
import 'package:flutter/material.dart';

import '../../models/user_model.dart';
import '../../utils/constants/padding_const.dart';
import 'card_item.dart';

class UserLIstView extends StatelessWidget {
  const UserLIstView({
    Key? key,
    required this.users,
  }) : super(key: key);

  final List<dynamic> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: PaddingConst.vertical8,
      itemCount: users.length,
      itemBuilder: (ctx, i) {
        return CardItem(user: UserModel.fromJson(users[i]));
      },
    );
  }
}
