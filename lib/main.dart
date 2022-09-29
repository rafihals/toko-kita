import 'package:flutter/material.dart';
import 'package:toko_kita/constans/global_variable.dart';
import 'package:toko_kita/constants.dart';
import 'package:toko_kita/features/auth/screens/auth_screens.dart';
import 'package:toko_kita/router/router.dart';
import 'package:toko_kita/common/widget/button_bar.dart';
import 'package:toko_kita/home/screens/homescreens.dart';
import 'package:toko_kita/Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(const Tokokita());
}

class Tokokita extends StatelessWidget {
  const Tokokita({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toko Kita',
      theme: ThemeData(
          scaffoldBackgroundColor: Globalvariable.backgroundColor,
          colorScheme: ColorScheme.light(
            primary: Globalvariable.secondaryColor,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: kPrimaryColor,
              shape: StadiumBorder(),
              maximumSize: Size(double.infinity, 48),
              minimumSize: Size(double.infinity, 48),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: kPrimaryLightColor,
            iconColor: kPrimaryColor,
            prefixIconColor: kPrimaryColor,
            contentPadding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none,
            ),
          ),
          appBarTheme: const AppBarTheme(
              elevation: 0, iconTheme: IconThemeData(color: Colors.black))),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: WelcomeScreen(),
    );
  }
}
