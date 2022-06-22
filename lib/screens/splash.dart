import 'package:flutter/material.dart';
import 'package:opep_mobile/screens/onboard/onboard.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 10), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Onboard()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff4582c4),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitCircle(
              color: Colors.white.withOpacity(0.8),
              size: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
