import 'package:flutter/material.dart';

class AddressBox extends StatelessWidget {
  const AddressBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFF9B99DE),
              Color(0xFF9B99DE)
            ], stops: [
              0.5,
              1.0
            ]),
          ),
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: const [
              Icon(
                Icons.location_on_outlined,
                size: 25,
                color: Color(0xFFFFFFFF),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('Send to', style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 15,fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
