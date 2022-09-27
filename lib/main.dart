import 'package:bottom_api/pages/home.dart';
import 'package:bottom_api/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(
      loginContext: context,
    ),
    HomePage.tag: (context) => HomePage(
      homeContext: context,
    ),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Albatros mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(loginContext: context),
      routes: routes,
    );
  }
}

