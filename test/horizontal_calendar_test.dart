import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mucomed_flutter/widgets/horizontal_calendar.dart';
import 'package:mucomed_flutter/widgets/horizontal_calendar_day.dart';

Widget createHorizontalCalendar() => NeumorphicApp(home: HorizontalCalendar((date) => {}));

void main() {
  group("Testing HorizontalCalendar component...", () {
    testWidgets("Renders calendar days correctly", (WidgetTester tester) async {
      await tester.pumpWidget(createHorizontalCalendar());

      Finder horizontalCalendarDay = find.byType(HorizontalCalendarDay);
      expect(horizontalCalendarDay, findsWidgets);
    });
  });
}
