import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opep_mobile/screens/auth/register1.dart';
import 'package:opep_mobile/screens/home.dart';

class Register4 extends StatefulWidget {
  const Register4({Key? key}) : super(key: key);

  @override
  State<Register4> createState() => _Register41State();
}

class _Register41State extends State<Register4> {
  bool isVisible = false;
  bool isVisible2 = false;
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
                height: MediaQuery.of(context).size.height * 0.75,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),

                    // Title

                    Text(
                      'Last step, your password',
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
                      height: 30,
                    ),

                    // First field

                    SizedBox(
                      width: 280,
                      child: TextFormField(
                        obscureText: isVisible ? true : false,
                        decoration: InputDecoration(
                            hintText: "Mot de passe",
                            hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(0.8)),
                            filled: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[300] as Color,
                                    width: 3)),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  if (isVisible == true) {
                                    setState(() {
                                      isVisible = false;
                                    });
                                  } else {
                                    setState(() {
                                      isVisible = true;
                                    });
                                  }
                                },
                                icon: isVisible
                                    ? FaIcon(
                                        FontAwesomeIcons.solidEyeSlash,
                                        size: 20,
                                      )
                                    : FaIcon(
                                        FontAwesomeIcons.solidEye,
                                        size: 20,
                                      ))),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    // Second field

                    SizedBox(
                      width: 280,
                      child: TextFormField(
                        obscureText: isVisible2 ? true : false,
                        decoration: InputDecoration(
                            hintText: "Confirmer le mot de passe",
                            hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(0.8)),
                            filled: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[300] as Color,
                                    width: 3)),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  if (isVisible2 == true) {
                                    setState(() {
                                      isVisible2 = false;
                                    });
                                  } else {
                                    setState(() {
                                      isVisible2 = true;
                                    });
                                  }
                                },
                                icon: isVisible2
                                    ? FaIcon(
                                        FontAwesomeIcons.solidEyeSlash,
                                        size: 20,
                                      )
                                    : FaIcon(
                                        FontAwesomeIcons.solidEye,
                                        size: 20,
                                      ))),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    // Main button

                    SizedBox(
                      height: 60,
                      width: 250,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        color: Color(0xFF4582c4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          'Terminer',
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
