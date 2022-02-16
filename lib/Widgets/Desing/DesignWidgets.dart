import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Designwidgets {
  static LinearGradient linearGradient(BuildContext context) {
    return LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Theme.of(context).primaryColorLight,
          Theme.of(context).primaryColor,
        ]);
  }

  static RichText title() {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: 'Shopping',
            style: GoogleFonts.portLligatSans(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.white60),
            children: [
              TextSpan(
                  text: "List",
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 30))
            ]));
  }
}
