import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mucomed_flutter/model/mucomed/meal/meal.dart';
import 'package:mucomed_flutter/widgets/meal_card.dart';

void main() {
  Meal testMeal = Meal();
  testMeal.id = 1;
  testMeal.amount = "Für 4 Personen";
  testMeal.name = "Titel Test";

  Widget getMealCard = NeumorphicApp(home: MealCard(testMeal));

  group("Testing MealCard Component...", () {
    testWidgets("MealCard renders a title", (WidgetTester tester) async {
      await tester.pumpWidget(getMealCard);

      Finder titleFinder = find.text(testMeal.name);
      expect(titleFinder, findsOneWidget);
    });

    testWidgets("MealCard renders a amount", (WidgetTester tester) async {
      await tester.pumpWidget(getMealCard);

      Finder amountFinder = find.text(testMeal.amount);
      expect(amountFinder, findsOneWidget);
    });
  });
}
