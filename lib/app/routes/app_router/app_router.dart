import 'package:chef_app/features/change_local/change_local.dart';
import 'package:chef_app/features/splash/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splash = "/splash";
  static const String intailRoute = "/";

  static const String login = "/intail";
  static const String changeLac = "/changeLac";
  static const String sendcode = "/sendcode";
  static const String resetPassword = "/resetPassword";
  static const String addMeal = "/addMeal";
  static const String settings = "/settings";
  static const String changePassword = "/changeLac";
  static const String menue = "/menue";
  static const String ProfileHome = "/ProfileHome";
  static const String ubdateProfile = "/menue";
}

class AppRoter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.changeLac:
        return MaterialPageRoute(builder: (_) => ChangeLocale());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text("this is route is defined")),
                ));
    }
  }
}
