import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class AppFlavor extends StatelessWidget {
  final String downloadURL;
  final Color color;
  final String flavorName;
  final double version;
  final DateTime? dateTime;
  const AppFlavor({
    Key? key,
    required this.downloadURL,
    required this.color,
    required this.flavorName,
    required this.version,
    required this.dateTime,
  }) : super(key: key);

  static Widget empty = Expanded(child: Container());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              'Easy App Redesign',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              flavorName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                html.window.open(downloadURL, 'PlaceholderName');
              },
              child: const Text('Download'),
            ),
            const SizedBox(height: 30),
            Text(
              'Version $version',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              dateTime?.toString() ?? '-',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
