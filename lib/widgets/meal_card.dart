import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mucomed_flutter/model/mucomed/meal/meal.dart';
import 'package:mucomed_flutter/style.dart';

class MealCard extends StatelessWidget {
  const MealCard(this.meal, {Key? key}) : super(key: key);

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Style.edgeInsetsY,
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 6,
        child: NeumorphicButton(
          onPressed: () {
            print("Meal klick");
          },
          style: NeumorphicStyle(depth: Style.neuDepthHigh, intensity: 1, boxShape: NeumorphicBoxShape.roundRect(Style.borderRadiusDefault)),
          child: Padding(
            padding: Style.edgeInsetsAll,
            child: (Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/1.png"),
                Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  Text(
                    meal.name,
                    textScaleFactor: Style.fontSizeTitle,
                    style: TextStyle(color: Style.colorTitle, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    meal.amount,
                    textScaleFactor: Style.fontSizeMD,
                    style: TextStyle(color: Colors.grey.shade600),
                  )
                ]),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
