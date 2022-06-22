import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';

class Trajet extends StatefulWidget {
  const Trajet({Key? key}) : super(key: key);

  @override
  State<Trajet> createState() => _TrajetState();
}

class _TrajetState extends State<Trajet> {
  final Completer<YandexMapController> _completer = Completer();

  final List<MapObject> mapObjects = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.only(
                //     bottomLeft: Radius.circular(20),
                //     bottomRight: Radius.circular(20)),
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Stack(children: [
                YandexMap(
                  mapObjects: mapObjects,
                  onMapCreated: (YandexMapController controller) {
                    _completer.complete(controller);
                    controller.moveCamera(CameraUpdate.newCameraPosition(
                        CameraPosition(
                            target: Point(latitude: 4.05, longitude: 9.7),
                            zoom: 14)));
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black.withOpacity(0.7),
                          )),
                    ),
                    Text('Contacts urgents',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.transparent,
                            fontSize: 22)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.08,
                    )
                  ],
                )
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Center(
                    child: Text(
                      '01 Jan 2022 12:00',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Center(
                    child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.warning,
                          color: Colors.white,
                          size: 15,
                        ),
                        Text(
                          'Signaler',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )
                      ],
                    ),
                    color: Colors.redAccent,
                    padding: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.black26,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              color: Color(0xff4582c4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Location 1',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: FaIcon(
                      FontAwesomeIcons.arrowRight,
                      size: 18,
                      color: Color(0xff4582c4),
                    )),
                  ),
                  Text(
                    'Location 2',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Montant payé',
                      ),
                    ),
                    Text(
                      '5000 FCFA',
                    ),
                  ],
                ),
                Text(
                  'Par',
                ),
                Center(
                    child: SizedBox(
                  width: 60,
                  height: 60,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/momo.jpg')),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.black26,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/conducteur.jpg')),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Conducteur',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'John Snow',
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Note attribuée',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.solidStar,
                            size: 15,
                            color: Color(0xff4582c4),
                          ),
                          FaIcon(
                            FontAwesomeIcons.solidStar,
                            size: 15,
                            color: Color(0xff4582c4),
                          ),
                          FaIcon(
                            FontAwesomeIcons.solidStar,
                            size: 15,
                            color: Color(0xff4582c4),
                          ),
                          FaIcon(
                            FontAwesomeIcons.solidStar,
                            size: 15,
                            color: Color(0xff4582c4),
                          ),
                          FaIcon(
                            FontAwesomeIcons.star,
                            size: 15,
                            color: Color(0xff4582c4),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
