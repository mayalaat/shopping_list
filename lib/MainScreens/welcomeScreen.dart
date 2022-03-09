import 'package:flutter/material.dart';
import 'package:shopping_list/MainScreens/login/loginScreen.dart';
import 'package:shopping_list/Utils/TextApp.dart';
import 'package:shopping_list/Widgets/Components/Buttons/mySignInButton.dart';
import 'package:shopping_list/Widgets/Desing/DesignWidgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration:
              BoxDecoration(gradient: Designwidgets.linearGradient(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Designwidgets.title(),
              MySignInButton(
                  Theme.of(context).primaryColor,
                  MaterialStateProperty.all<Color>(Colors.white),
                  LoginScreen()),
              _signUpButton(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _signUpButton(BuildContext context) {
  return Container(
    width: double.infinity,
    child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.white),
        ),
        onPressed: () => print("SignUp"),
        child: Text(
          TextApp.SIGNUP,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        )),
  );
}
