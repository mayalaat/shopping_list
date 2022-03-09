import 'package:flutter/material.dart';
import 'package:shopping_list/MainScreens/homeScreen.dart';
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
                  _divider()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
