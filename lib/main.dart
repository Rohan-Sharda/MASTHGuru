import 'package:flutter/material.dart';
import 'package:login_ps/login_page.dart';
import 'package:login_ps/utils/routes.dart';

void main() {
  runApp(MASTHGuru());
}

class MASTHGuru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        // MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
