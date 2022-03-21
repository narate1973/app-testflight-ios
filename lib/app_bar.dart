import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Row(
        children: [
          const SizedBox(width: 20),
          Image.asset(
            'aisTestFlightIcon.png',
            width: 40,
            height: 40,
          ),
          const SizedBox(width: 20),
          const Text(
            'AIS Easy App IOS',
            style: TextStyle(color: Colors.white, fontSize: 25),
          )
        ],
      ),
    );
  }
}
