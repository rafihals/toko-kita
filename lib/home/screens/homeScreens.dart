import 'package:flutter/material.dart';
import 'package:toko_kita/constans/global_variable.dart';
import 'package:toko_kita/common/widget/button_bar.dart';
import 'package:toko_kita/features/auth/widgets/address_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          flexibleSpace: Container(
            decoration:
                const BoxDecoration(gradient: Globalvariable.appbarGradient),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                    height: 30,
                    margin: const EdgeInsets.only(left: 15),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: InkWell(
                              onTap: () {},
                              child: const Padding(
                                padding: EdgeInsets.only(right: 11),
                                child: Icon(
                                  Icons.search,
                                  color: Color(0xFF8381D6),
                                  size: 23,
                                ),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.only(top: 10),
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide.none),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                borderSide: BorderSide(
                                    color: Color(0xFFFFFFFF), width: 1)),
                            hintText: 'What do you looking for?',
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: Color(0xFF8381D6),
                            )),
                      ),
                    )),
              ),
              Container(
                color: Colors.transparent,
                height: 42,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  
                  children: const [
                    Icon(
                      Icons.store_mall_directory,
                      color: Color(0xFFFFFFFF),
                      size: 25,
                    ),
                    Icon(
                      Icons.shopping_cart,
                      size: 25,
                      color: Color(0xFFFFFFFF),
                    ),
                    Icon(
                      Icons.notifications,
                      size: 25,
                      color: Color(0xFFFFFFFF),
                    ),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: const [
          AddressBox(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
