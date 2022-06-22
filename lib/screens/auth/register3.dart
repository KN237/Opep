import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opep_mobile/screens/auth/register4.dart';

class Register3 extends StatefulWidget {
  const Register3({Key? key}) : super(key: key);

  @override
  State<Register3> createState() => _Register3State();
}

class _Register3State extends State<Register3> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // Purple/blue background
        child: Container(
          color: Color(0xFF4582c4),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),

              // Page Title and arrowBack Button

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  Text('Enregistrement',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 22)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),

              // White bordered background

              Container(
                height: MediaQuery.of(context).size.height * 1.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),

                    // Title

                    Text(
                      'Now,Lets get registered',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 25,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // Subtitle
                    Text(
                      'Asperiores, officiis? Quia reprehenderit iste modi dolorum ut porro quisquam aspernatur nam a!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    //Email field
                    SizedBox(
                      width: 280,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Adresse Email",
                          hintStyle:
                              TextStyle(color: Colors.grey.withOpacity(0.7)),
                          filled: true,
                          focusColor: Color(0xFF4582c4),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[300] as Color, width: 3)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // Lastnames field
                    SizedBox(
                      width: 280,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Noms",
                          hintStyle:
                              TextStyle(color: Colors.grey.withOpacity(0.7)),
                          filled: true,
                          focusColor: Color(0xFF4582c4),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[300] as Color, width: 3)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // Firstnames field
                    SizedBox(
                      width: 280,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Prénoms",
                          hintStyle:
                              TextStyle(color: Colors.grey.withOpacity(0.7)),
                          filled: true,
                          focusColor: Color(0xFF4582c4),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[300] as Color, width: 3)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    // Gender Field

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          'Sexe',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ToggleButtons(renderBorder: false, children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Text(
                          'Masculin',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(Size.fromWidth(110)),
                            backgroundColor: isMale
                                ? MaterialStateProperty.all(Color(0xFF4582c4))
                                : MaterialStateProperty.all(Colors.grey[400])),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Text(
                              'Feminin',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all(
                                    Size.fromWidth(110)),
                                backgroundColor: isMale
                                    ? MaterialStateProperty.all(
                                        Colors.grey[400])
                                    : MaterialStateProperty.all(
                                        Color(0xFF4582c4)))),
                      )
                    ], isSelected: [
                      true,
                      false
                    ]),
                    SizedBox(
                      height: 30,
                    ),
                    // Avatar Field
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          'Avatar',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xFF4582c4),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                          child: FaIcon(
                        FontAwesomeIcons.camera,
                        color: Colors.white,
                      )),
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    // Main button

                    SizedBox(
                      height: 60,
                      width: 250,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register4()));
                        },
                        color: Color(0xFF4582c4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          'Suivant',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
