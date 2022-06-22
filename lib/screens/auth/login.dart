import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opep_mobile/screens/auth/password_reset.dart';
import 'package:opep_mobile/screens/auth/register1.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login1State();
}

class _Login1State extends State<Login> {
  bool isVisible = false;
  bool isDriver = false;
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
                  Text('Connexion',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 22)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  )
                ],
              ),

              // ! Page Title and arrowBack Button

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

                // Login Form

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                    ),

                    // Passager/conducteur toggle button

                    ToggleButtons(renderBorder: false, children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isDriver = false;
                          });
                        },
                        child: Text(
                          'Passager',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(Size.fromWidth(110)),
                            backgroundColor: isDriver
                                ? MaterialStateProperty.all(Colors.grey[400])
                                : MaterialStateProperty.all(Color(0xFF4582c4))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isDriver = true;
                              });
                            },
                            child: Text(
                              'Conducteur',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all(
                                    Size.fromWidth(110)),
                                backgroundColor: isDriver
                                    ? MaterialStateProperty.all(
                                        Color(0xFF4582c4))
                                    : MaterialStateProperty.all(
                                        Colors.grey[400]))),
                      )
                    ], isSelected: [
                      true,
                      false
                    ]),

                    // ! Passager/Conducteur toggleButton

                    SizedBox(
                      height: 30,
                    ),
                    //  Phone textField
                    SizedBox(
                      width: 280,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "Telephone",
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
                      height: 40,
                    ),
                    //  Password textField
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
                      height: 30,
                    ),

                    //  Form button

                    SizedBox(
                      height: 60,
                      width: 250,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Color(0xFF4582c4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          'Connexion',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),

                    // Forgot password ?

                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PasswordReset()));
                        },
                        child: Text('Mot de passe oublié ?',
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500))),

                    //  register button

                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register1()));
                        },
                        child: Text('Pas de compte ? Créer-en un',
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500)))
                  ],
                ),

                // Login Form
              )

              // ! White bordered background
            ],
          ),
        ),
        // ! Purple/blue background
      ),
    );
  }
}
