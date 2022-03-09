import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_list/Widgets/Components/Containers/ContainerShape.dart';
import 'package:shopping_list/Widgets/Desing/DesignWidgets.dart';

import '../../Widgets/Components/MyBackButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
