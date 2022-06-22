import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProfil extends StatefulWidget {
  const MyProfil({Key? key}) : super(key: key);

  @override
  State<MyProfil> createState() => _MyProfilState();
}

class _MyProfilState extends State<MyProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF4582c4),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 50.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.solidUser,
                              color: Color(0xFF4582c4),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 110.0),
                        child: Column(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            SizedBox(
                              width: 150,
                              child: Text("KANA MBOMA",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 150,
                              child: Text("+237 693 34 13 76",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 150,
                              child: Text("kanamboma@gmail.com",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 35.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Center(
                    child: Text('Compte',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 22)),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView(
                children: [
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.house, size: 20),
                    title: Text('Adresse Maison'),
                    subtitle: Text('Mobile Omnisport'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyProfil()));
                    },
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.desktop, size: 20),
                    title: Text('Adresse Maison'),
                    subtitle: Text('Tradex Emana'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyProfil()));
                    },
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.timeline, size: 20),
                    title: Text('Date d\'inscription'),
                    subtitle: Text('01 Janvier 2022'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyProfil()));
                    },
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.signOut,
                      size: 20,
                      color: Colors.red,
                    ),
                    title: Text(
                      'Déconnexion',
                      style: TextStyle(color: Colors.red),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyProfil()));
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
