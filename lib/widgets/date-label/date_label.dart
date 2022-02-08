import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style.dart';

class DateLabel extends StatelessWidget {
  const DateLabel(this.date, {Key? key}) : super(key: key);

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          formatDate(date, ['dd']),
          textScaleFactor: Style.fontSizeMD,
        ),
        Text(
          formatDate(date, ['MM']),
          textScaleFactor: Style.fontSizeSM,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary),
        ),
      ],
    );
  }
}
