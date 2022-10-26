import 'package:get/get.dart';
import 'package:odev_2/ui/login_Page.dart';
import 'package:odev_2/ui/login_home.dart';
import 'package:odev_2/ui/login_home.dart';
import 'package:odev_2/companents/custom_button.dart';

class RoutesClass {
  static String home = "/";
  static String loginHome = "/loginHome";

  static String getHomeRoute() => home;
  static String getLoginHomeRoute() => loginHome;

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const LoginPage()),
    GetPage(name: loginHome, page: () => const LoginHome()),
  ];
}
