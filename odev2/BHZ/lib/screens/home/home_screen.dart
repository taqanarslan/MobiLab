import 'package:flutter/material.dart';
import '../../controllers/screens/home_screen.dart';
import '../../models/auth_model.dart';
import '../../utils/constants/error_const.dart';
import '../../utils/constants/text_const.dart';
import 'user_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final AuthUser user = arguments['user'];
    return Scaffold(
      appBar: AppBar(
        title: Text(TextConst.welcome + user.name),
      ),
      body: FutureBuilder(
        future: HomeScreenController.getUsers(),
        builder: (ctx, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          print(snap.error.toString());
          if (snap.error != null) {
            return Center(
              child: Text(ErrorConst.errorHappened,
                  style: Theme.of(context).textTheme.headline4),
            );
          } else {

            final List<dynamic> users =
                snap.data as List<dynamic>;
            print(users.length);

            return UserLIstView(users: users);
          }
        },
      ),
    );
  }
}
