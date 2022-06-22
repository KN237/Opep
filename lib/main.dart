import 'package:flutter/material.dart';
import 'package:opep_mobile/screens/onboard/onboard.dart';
import 'package:opep_mobile/screens/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:opep_mobile/screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(Opep(showHome: showHome));
}

class Opep extends StatelessWidget {
  final bool showHome;
  const Opep({Key? key, required this.showHome}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/images/passager.jpg"), context);
    precacheImage(AssetImage("assets/images/passager3.jpg"), context);
    precacheImage(AssetImage("assets/images/search.jpg"), context);
    return MaterialApp(
      title: 'OPEP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff4582c4),
      ),
      home: showHome ? Home() : Splash(),
    );
  }
}
