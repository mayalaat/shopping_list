import 'package:flutter/widgets.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:shopping_list/Widgets/Desing/DesignWidgets.dart';

class ContainerShape extends StatelessWidget {
  const ContainerShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
        clipper: WaveClipperTwo(),
        child: Container(
          height: MediaQuery.of(context).size.height * .15,
          width: MediaQuery.of(context).size.width,
          decoration:
              BoxDecoration(gradient: Designwidgets.linearGradient(context)),
        ),
      ),
    );
  }
}
