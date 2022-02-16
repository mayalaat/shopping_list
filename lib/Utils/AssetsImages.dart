import 'package:flutter/widgets.dart';

class AssetsImages {
  static final String path = "assets/images/";

  static Image getImageLogo() {
    return Image.asset("${path}ic_launcher.png");
  }
}
