import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff4582c4),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        Center(
                          child: Text('PorteFeuille',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  fontSize: 22)),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Solde',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    SizedBox(
                      height: 10,
                    ),
                    Text('12000 FCFA',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 22)),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFF4582c4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: FaIcon(
                      FontAwesomeIcons.plusCircle,
                      color: Colors.white,
                    )),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFF4582c4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: FaIcon(
                      FontAwesomeIcons.minusCircle,
                      color: Colors.white,
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Transactions'),
                  TextButton(onPressed: () {}, child: Text('Afficher tout'))
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text('Paiement',
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            Text('15/06/2022',
                                style: TextStyle(fontWeight: FontWeight.w100))
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text('3000 FCFA',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.w500)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text('Paiement',
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            Text('13/06/2022',
                                style: TextStyle(fontWeight: FontWeight.w100))
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text('2000 FCFA',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.w500)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text('Recharge ',
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            Text('11/06/2022',
                                style: TextStyle(fontWeight: FontWeight.w100))
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text('20000 FCFA',
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontWeight: FontWeight.w500)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text('Retrait ',
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            Text('01/06/2022',
                                style: TextStyle(fontWeight: FontWeight.w100))
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text('6000 FCFA',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w500)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text('Retrait ',
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            Text('01/06/2022',
                                style: TextStyle(fontWeight: FontWeight.w100))
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text('6000 FCFA',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w500)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text('Retrait ',
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            Text('01/06/2022',
                                style: TextStyle(fontWeight: FontWeight.w100))
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text('6000 FCFA',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w500)))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
