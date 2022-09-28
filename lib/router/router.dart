import 'package:flutter/material.dart';
import 'package:toko_kita/common/widget/button_bar.dart';
import 'package:toko_kita/features/auth/screens/auth_screens.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
       case Buttonbar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Buttonbar(),
      );



      default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screens do not exist!'),
          ),
        ),
      );
      
      
  }
}
