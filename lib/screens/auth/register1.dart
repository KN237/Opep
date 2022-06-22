import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opep_mobile/screens/auth/register2.dart';

class Register1 extends StatefulWidget {
  const Register1({Key? key}) : super(key: key);

  @override
  State<Register1> createState() => _Register1State();
}

class _Register1State extends State<Register1> {
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

              // White background

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
                      'Lets get started',
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

                    // Main field

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
                                    color: Colors.grey[300] as Color,
                                    width: 3)),
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 5.0),
                              child: Text('+237'),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    // Main Button

                    SizedBox(
                      height: 60,
                      width: 250,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register2()));
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
