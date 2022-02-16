import 'package:flutter/material.dart';
import 'package:shopping_list/MainScreens/welcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xff8041b2),
          primaryColorDark: Color(0xffb26fe5),
          primaryColorLight: Color(0xff4f1182),
          //backgroundColor: Color(0xffffffff),

          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen();
  }
}
