import 'dart:core';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:opep_mobile/screens/home.dart';

class Onboard extends StatefulWidget {
  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  final pvController = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 40),
        child: PageView(
          controller: pvController,
          onPageChanged: (index) {
            setState(() {
              index == 2 ? isLastPage = true : false;
            });
          },
          children: [
            // Onboarding's first page

            OnboardPage(
              image: "assets/images/passager.jpg",
              title: "",
              subtitle: "",
            ),

            // Onboarding's second page

            OnboardPage(
              image: "assets/images/search.jpg",
              title: "",
              subtitle: "",
            ),

            // Onboarding's third page

            OnboardPage(
              image: "assets/images/conducteur.jpg",
              title: "",
              subtitle: "",
            ),
          ],
        ),
      ),

      // Onboarding's page indicator items

      bottomSheet: isLastPage
          ? Padding(
              padding: const EdgeInsets.only(bottom: 20.0, left: 50),
              child: SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.7,
                child: MaterialButton(
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setBool('showHome', true);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  color: Color(0xFF4582c4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(
                    'Commencer',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TextButton(
                  //   onPressed: () {
                  //     pvController.jumpToPage(2);
                  //   },
                  //   child: Text(
                  //     'Passer',
                  //     style: TextStyle(color: Color(0xFF4582C4)),
                  //   ),
                  // ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: pvController,
                      count: 3,
                      effect: WormEffect(
                          dotWidth: 10,
                          dotHeight: 10,
                          spacing: 16,
                          dotColor: Colors.black26,
                          activeDotColor: Color(0xFF4582C4)),
                      onDotClicked: (index) => pvController.animateToPage(index,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn),
                    ),
                  ),
                ],
              )),
    );
  }
}

class OnboardPage extends StatelessWidget {
  OnboardPage({
    required String this.image,
    required String this.title,
    required String this.subtitle,
  });

  String image;
  String title;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(image)),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(50))),
                height: MediaQuery.of(context).size.height * 0.45,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(title,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54)),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              subtitle,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ));
  }
}
