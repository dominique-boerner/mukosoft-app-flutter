import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../style.dart';

class TimeSelector extends StatelessWidget {
  const TimeSelector(this.times, {Key? key}) : super(key: key);

  final List<DateTime> times;

  static const double iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: Style.borderRadiusDefault,
        color: Theme.of(context).primaryColorLight,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_left_rounded,
              size: iconSize,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Text(
            "12:00",
            textScaleFactor: Style.fontSizeXL,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_right_rounded,
              size: iconSize,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
