import 'package:flutter/material.dart';

import '../../style.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle(this.title, {Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textScaleFactor: Style.fontSizeXS,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
