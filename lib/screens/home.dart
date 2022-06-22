import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opep_mobile/screens/drawer.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart' as Geo;

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Completer<YandexMapController> _completer = Completer();
  final List<MapObject> mapObjects = [];

  Future<Position> getPosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    return position;
  }

  Future<List<Geo.Placemark>> getPositionName() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    List<Geo.Placemark> placemarks = await Geo.placemarkFromCoordinates(
        position.latitude, position.longitude);
    return placemarks;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerEnableOpenDragGesture: false,
        drawer: CustomDrawer(),
        body: Container(
          child: Column(children: [
            SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF4582c4),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Builder(
                        builder: (context) => IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: Icon(Icons.menu),
                            color: Colors.white)),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      FaIcon(FontAwesomeIcons.locationDot, size: 13),
                      FutureBuilder(
                          future: getPosition(),
                          builder: (BuildContext ctx,
                              AsyncSnapshot<dynamic> snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Text(
                                " Chargement... ",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              );
                            } else if (snapshot.connectionState ==
                                ConnectionState.done) {
                              if (!snapshot.hasData) {
                                return Text(
                                  " Erreur",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                );
                              } else {
                                // return SizedBox(
                                //   width: 150,
                                //   child: Text(
                                //     " ${snapshot.data[0].country}, ${snapshot.data[0].street}",
                                //     style:
                                //         TextStyle(fontWeight: FontWeight.w600),
                                //     overflow: TextOverflow.ellipsis,
                                //   ),
                                // );

                                return Text(
                                  " Debug mode",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                );
                              }
                            } else {
                              return Text(
                                " Erreur",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              );
                            }
                          }),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Bon retour, Wilfried !"),
                ],
              ),
              SizedBox(
                width: 50,
              )
            ]),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    child: FutureBuilder(
                      future: getPosition(),
                      builder:
                          (BuildContext ctx, AsyncSnapshot<Position> snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.connectionState ==
                            ConnectionState.done) {
                          if (snapshot.hasError) {
                            return Container(
                                color: Colors.black.withOpacity(0.7),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                        'Pour avoir accès à la carte, bien vouloir activer les autorisations.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    TextButton(
                                      onPressed: () async {
                                        setState(() {});
                                      },
                                      child: Text(
                                        'Activer les permissions',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ));
                          } else if (snapshot.hasData) {
                            mapObjects.add(Placemark(
                              mapId: MapObjectId('placemark_1'),
                              point: Point(
                                  latitude: snapshot.data!.latitude,
                                  longitude: snapshot.data!.longitude),
                            ));
                            return YandexMap(
                              mapObjects: mapObjects,
                              onMapCreated: (YandexMapController controller) {
                                _completer.complete(controller);
                                controller.moveCamera(
                                    CameraUpdate.newCameraPosition(
                                        CameraPosition(
                                            target: Point(
                                                latitude:
                                                    snapshot.data!.latitude,
                                                longitude:
                                                    snapshot.data!.longitude),
                                            zoom: 14)));
                              },
                            );
                            // return Container(
                            //   color: Colors.black.withOpacity(0.7),
                            // );
                          } else {
                            return Container(
                                color: Colors.black.withOpacity(0.7),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                        'Pour avoir accès à la carte, bien vouloir activer les autorisations.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    TextButton(
                                      onPressed: () async {
                                        setState(() {});
                                      },
                                      child: Text(
                                        'Activer les permissions',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ));
                          }
                        } else {
                          return Container(
                              color: Colors.black.withOpacity(0.7),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      'Pour avoir accès à la carte, bien vouloir activer les autorisations.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextButton(
                                    onPressed: () async {
                                      setState(() {});
                                    },
                                    child: Text(
                                      'Activer les permissions',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ));
                        }
                      },
                    ),
                  ),
                  Positioned.fill(
                    top: 30,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 50,
                          child: Material(
                            elevation: 10,
                            shadowColor: Colors.black,
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(100),
                            child: TextFormField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                  hintText: "Choisir un lieu",
                                  border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(80)),
                                  contentPadding:
                                      EdgeInsets.only(top: 16.0, left: 12.0),
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(80)),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 14.0, left: 12.0),
                                    child: FaIcon(FontAwesomeIcons.search,
                                        size: 20),
                                  ),
                                )),
                          )),
                    ),
                  ),
                  Positioned.fill(
                    bottom: 30,
                    right: 30,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                          width: 50,
                          height: 50,
                          child: MaterialButton(
                            elevation: 10,
                            color: Colors.white,
                            height: 50,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            onPressed: () {
                              setState(() {});
                            },
                            child: FaIcon(
                              FontAwesomeIcons.location,
                              size: 15,
                            ),
                          )),
                    ),
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
