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
              Color.fromARGB(255, 114, 226, 221),
              Color.fromARGB(255, 163, 236, 233)
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
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'Send to',
                    style: const TextStyle(fontWeight: FontWeight.w500),
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
