import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:toko_kita/constans/global_variable.dart';
import 'package:toko_kita/main.dart';
import 'package:toko_kita/home/screens/homeScreens.dart';

class Buttonbar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const Buttonbar({Key? key}) : super(key: key);

  @override
  State<Buttonbar> createState() => _ButtonbarState();
}

class _ButtonbarState extends State<Buttonbar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: Globalvariable.selectedNavBarColor,
        unselectedItemColor: Globalvariable.unselectedNavBarColor,
        backgroundColor: Globalvariable.backgroundColor,
        iconSize: 28,
        onTap: updatePage,
        items: [
          // HOME
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                color: _page == 0
                    ? Globalvariable.selectedNavBarColor
                    : Globalvariable.backgroundColor,
                width: bottomBarBorderWidth,
              ))),
              child: const Icon(Icons.home_outlined),
            ),
            label: '',
          ),
          // ACCOUNT
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                color: _page == 1
                    ? Globalvariable.selectedNavBarColor
                    : Globalvariable.backgroundColor,
                width: bottomBarBorderWidth,
              ))),
              child: const Icon(Icons.person_outline_outlined),
            ),
            label: '',
          ),
          // CART
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                color: _page == 2
                    ? Globalvariable.selectedNavBarColor
                    : Globalvariable.backgroundColor,
                width: bottomBarBorderWidth,
              ))),
              child: Badge(
                  badgeContent: const Text('2'),
                  badgeColor: Colors.red,
                  elevation: 0,
                  child: const Icon(Icons.shopping_cart_checkout_outlined)),
            ),
            label: '',
          )
        ],
      ),
    );
  }
}
