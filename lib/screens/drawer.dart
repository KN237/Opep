import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opep_mobile/screens/auth/login.dart';
import 'package:opep_mobile/screens/contact.dart';
import 'package:opep_mobile/screens/conversation.dart';
import 'package:opep_mobile/screens/help.dart';
import 'package:opep_mobile/screens/historique.dart';
import 'package:opep_mobile/screens/profil.dart';
import 'package:opep_mobile/screens/wallet.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Color(0xFF4582c4),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.houseUser,
                              color: Color(0xFF4582c4),
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 300,
                        child: Center(
                          child: Text('KANA MBOMA',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  fontSize: 17)),
                        ),
                      ),
                      SizedBox(
                        height: 05,
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.black26,
            ),
            SizedBox(
              height: 05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.65,
              child: ListView(
                children: [
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.arrowRightToBracket,
                      size: 20,
                    ),
                    title: Text('Authentification'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                  ListTile(
                      leading: FaIcon(FontAwesomeIcons.solidUser, size: 20),
                      title: Text('Compte'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyProfil()));
                      }),
                  ListTile(
                      leading:
                          FaIcon(FontAwesomeIcons.clockRotateLeft, size: 20),
                      title: Text('Historique'),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => History()));
                      }),
                  // ListTile(
                  //     leading: FaIcon(FontAwesomeIcons.solidMessage, size: 20),
                  //     title: Text('Chats'),
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => Conversarion()));
                  //     }),
                  ListTile(
                      leading: FaIcon(FontAwesomeIcons.wallet, size: 20),
                      title: Text('PorteFeuille'),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Wallet()));
                      }),
                  ListTile(
                      leading: FaIcon(FontAwesomeIcons.triangleExclamation,
                          size: 20),
                      title: Text('Contacts urgents'),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Contact()));
                      }),
                  ListTile(
                      leading: FaIcon(FontAwesomeIcons.userCheck, size: 20),
                      title: Text('Devenir Conducteur'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            content: Text(
                                "Contactez notre support pour plus d\' informations "),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: Text("Annuler"),
                              ),
                              TextButton(
                                onPressed: () {
                                  launch('tel://+237693341376');
                                },
                                child: Text("Appeler"),
                              ),
                            ],
                          ),
                        );
                      }),
                  ListTile(
                      leading: FaIcon(FontAwesomeIcons.solidCircleQuestion,
                          size: 20),
                      title: Text('Aide'),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Help()));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
