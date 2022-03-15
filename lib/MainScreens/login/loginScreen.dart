import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:shopping_list/MainScreens/homeScreen.dart';
import 'package:shopping_list/MainScreens/login/signUp.dart';
import 'package:shopping_list/Utils/TextApp.dart';
import 'package:shopping_list/Widgets/Components/Containers/ContainerShape.dart';
import 'package:shopping_list/Widgets/Components/Containers/Fields/myFieldForm.dart';
import 'package:shopping_list/Widgets/Desing/DesignWidgets.dart';

import '../../Widgets/Components/Buttons/myBackButton.dart';
import '../../Widgets/Components/Buttons/mySignInButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _emailPasswordWidget() {
    return Column(
      children: [
        MyFieldForm(TextApp.EMAIL, false),
        MyFieldForm(TextApp.PASSWORD, true),
        MySignInButton(
            Colors.white,
            MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
            HomeScreen())
      ],
    );
  }

  Widget _forgotPassword() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.centerRight,
      child: Text(
        TextApp.FORGOT_PASSWORD,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _divider() {
    return Container(
      child: Row(
        children: [
          Expanded(
              child: Divider(
            thickness: 1,
          )),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text(TextApp.OR),
          ),
          Expanded(
              child: Divider(
            thickness: 1,
          )),
        ],
      ),
    );
  }

  Widget _signInButton() {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      width: double.infinity,
      child: SignInButton(
        Buttons.Google,
        onPressed: () {},
      ),
    );
  }

  Widget _signInLabel() {
    return TextButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp())),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              TextApp.NEW_ACCOUNT,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              TextApp.CREATE_ACCOUNT,
              style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ContainerShape(),
            Positioned(top: height * .025, child: MyBackButton()),
            Container(
              height: double.infinity,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: height * .15),
                      child: Designwidgets.titleDark(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * .05),
                      child: _emailPasswordWidget(),
                    ),
                    _forgotPassword(),
                    _divider(),
                    _signInButton(),
                    _signInLabel(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
