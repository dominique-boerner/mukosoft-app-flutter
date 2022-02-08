import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mucomed_flutter/style.dart';

class HorizontalCalendarDay extends StatelessWidget {
  const HorizontalCalendarDay(this.date, this.isSelected, this._onTap, {Key? key}) : super(key: key);

  final DateTime date;
  final VoidCallback _onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    // needs to be HorizontalCalendarHeight - 20 (because of insets) !!!
    const double widgetWidth = 80;

    Color textColor = isSelected ? Theme.of(context).primaryColor : Theme.of(context).primaryColor;
    Color backgroundColor = isSelected ? Theme.of(context).primaryColorLight : Colors.white;

    return GestureDetector(
      onTap: _onTap,
      child: Container(
        margin: Style.edgeInsetsAll,
        width: widgetWidth,
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColorLight),
          borderRadius: Style.borderRadiusDefault,
          color: backgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              formatDate(date, [dd, '.', mm, '.']),
              textScaleFactor: Style.fontSizeMD,
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
            ),
            // Text(
            //   formatDate(date, [DD]),
            //   textScaleFactor: Style.fontSizeSM,
            //   style: TextStyle(color: textColor),
            // )
          ],
        ),
      ),
    );
  }
}
