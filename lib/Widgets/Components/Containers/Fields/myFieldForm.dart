import 'package:flutter/material.dart';

class MyFieldForm extends StatelessWidget {
  // const MyFieldForm({Key? key}) : super(key: key);

  String _title;
  bool _isPassword;

  MyFieldForm(this._title, this._isPassword);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextField(
              obscureText: _isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.grey[200],
                  filled: true),
            ),
          ),
        ],
      ),
    );
  }
}
