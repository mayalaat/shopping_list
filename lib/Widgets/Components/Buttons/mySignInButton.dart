import 'package:flutter/material.dart';
import 'package:shopping_list/Utils/TextApp.dart';

class MySignInButton extends StatelessWidget {
  MySignInButton(
      this._textColor, this._buttonBackgroundColor, this._widgetToNavigate);

  // Text _text;
  Color _textColor;
  MaterialStateProperty<Color> _buttonBackgroundColor;
  Widget _widgetToNavigate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50.0, bottom: 25),
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(backgroundColor: _buttonBackgroundColor),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => _widgetToNavigate)),
          child: Text(
            TextApp.LOGIN,
            style: TextStyle(
                color: _textColor,
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
