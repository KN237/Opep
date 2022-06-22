import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opep_mobile/screens/trajet.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff4582c4),
            bottom: TabBar(
              tabs: [
                Tab(icon: Text('Passé')),
                Tab(icon: Text('A Venir')),
              ],
              indicatorColor: Colors.white,
            ),
            title: Text('Historique',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 22)),
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
              Past(),
              Scheduled(),
            ],
          )),
    );
  }
}

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Trajet()));
      },
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/launcher.png",
                    width: 100,
                  ),
                ),
                Column(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text('Jeudi 13 Mai 2022 10:30'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Tradex Emana'),
                    SizedBox(
                      height: 10,
                    ),
                    FaIcon(
                      FontAwesomeIcons.arrowDown,
                      size: 13,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Terminus Mimboman'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.black26,
            )
          ],
        ),
      ),
    );
  }
}

class Past extends StatelessWidget {
  const Past({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.75,
          child: ListView(
            children: [
              HistoryItem(),
              HistoryItem(),
              HistoryItem(),
              HistoryItem()
            ],
          ),
        ),
      ],
    );
  }
}

class Scheduled extends StatelessWidget {
  const Scheduled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.75,
          child: ListView(
            children: [
              HistoryItem(),
              HistoryItem(),
              HistoryItem(),
              HistoryItem()
            ],
          ),
        ),
      ],
    );
  }
}
