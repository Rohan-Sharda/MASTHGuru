import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_ps/Otp.dart';
import 'package:login_ps/utils/routes.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 249, 239, 238),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 20.0, //to insert space instead of doing padding
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 227, 207, 201),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  "assets/images/masti.png",
                ),
              ),
              const SizedBox(
                height: 20.0, //to insert space instead of doing padding
              ),
              Text(
                "MASTH Guru",
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(250, 164, 112, 90),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0, //to insert space instead of doing padding
              ),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Container(
                  padding: EdgeInsets.all(28),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        showCursor: true,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            labelText: "Mobile Number",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(250, 164, 112, 90)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefix: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                '(+91)',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            suffixIcon: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 32,
                            )),
                      ),

                      SizedBox(
                        height: 30,
                      ),

                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Otp()),
                            );
                          },
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 231, 215, 215)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ))),
                          child: Padding(
                            padding: EdgeInsets.all(14),
                            child: Text(
                              "Send OTP",
                              style: TextStyle(
                                  fontSize: 16,
                                  // color: Color.fromARGB(250, 164, 112, 90),
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 20.0, //to insert space instead of doing padding
                      ),

                      Text(
                        "OR",
                        style: TextStyle(
                          color: Color.fromARGB(255, 164, 112, 90),
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 249, 239, 238),
                            onPrimary: Colors.black,
                            minimumSize: Size(200, 50),
                          ),
                          icon: FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.red,
                          ),
                          label: Text("Sign in with Google"),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 249, 239, 238),
                            onPrimary: Colors.black,
                            minimumSize: Size(200, 50),
                          ),
                          icon: FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Colors.pink,
                          ),
                          label: Text("Sign in with Instagram"),
                          onPressed: () {},
                        ),
                      )

                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                      // ),

                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
