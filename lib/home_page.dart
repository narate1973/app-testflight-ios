import 'package:apptestflight/app_bar.dart';
import 'package:apptestflight/app_colors.dart';
import 'package:apptestflight/app_flavor.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const String url1 =
      'itms-services://?action=download-manifest&url=https://dl.dropboxusercontent.com/s/1k4ja69vg02y2y9/manifest.plist';

  static const String url2 =
      'itms-services://?action=download-manifest&url=https://dl.dropboxusercontent.com/s/5y3b9v0ptpo123x/manifest.plist';

  static const String url3 =
      'itms-services://?action=download-manifest&url=https://dl.dropboxusercontent.com/s/0lxra4kpphzkchy/manifest.plist';

  static const String url4 =
      'itms-services://?action=download-manifest&url=https://dl.dropboxusercontent.com/s/p2cqt365b957p8o/manifest.plist';

  static const String url5 =
      'itms-services://?action=download-manifest&url=https://dl.dropboxusercontent.com/s/1dk7pin0hbdu4qm/manifest.plist';

  static const String url6 =
      'itms-services://?action=download-manifest&url=https://dl.dropboxusercontent.com/s/xl1ab10sdgj1c5y/manifest.plist';

  static const String url7 =
      'itms-services://?action=download-manifest&url=https://dl.dropboxusercontent.com/s/xl1ab10sdgj1c5y/manifest.plist';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 44, 52, 1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const AppBarCustom(),
            Row(
              children: [
                AppFlavor(
                  downloadURL: url1,
                  color: AppColors.one,
                  flavorName: 'Production',
                  version: 1.22,
                  dateTime: DateTime.now(),
                ),
                AppFlavor(
                  downloadURL: url2,
                  color: AppColors.two,
                  flavorName: 'SIT Backup-Online',
                  version: 1.22,
                  dateTime: DateTime.now(),
                ),
              ],
            ),
            Row(
              children: [
                AppFlavor(
                  downloadURL: url3,
                  color: AppColors.three,
                  flavorName: 'SIT Master',
                  version: 1.22,
                  dateTime: DateTime.now(),
                ),
                AppFlavor(
                  downloadURL: url4,
                  color: AppColors.four,
                  flavorName: 'PVT',
                  version: 1.22,
                  dateTime: DateTime.now(),
                ),
              ],
            ),
            Row(
              children: [
                AppFlavor(
                  downloadURL: url5,
                  color: AppColors.five,
                  flavorName: 'Redis',
                  version: 1.22,
                  dateTime: DateTime.now(),
                ),
                AppFlavor(
                  downloadURL: url6,
                  color: AppColors.six,
                  flavorName: 'App Store',
                  version: 1.22,
                  dateTime: DateTime.now(),
                ),
              ],
            ),
            Row(
              children: [
                AppFlavor(
                  downloadURL: url7,
                  color: AppColors.seven,
                  flavorName: 'PVT-Nelika',
                  version: 1.22,
                  dateTime: DateTime.now(),
                ),
                AppFlavor.empty,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
