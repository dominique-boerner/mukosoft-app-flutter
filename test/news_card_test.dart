import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mucomed_flutter/model/mucomed/news/news.dart';
import 'package:mucomed_flutter/widgets/date-label/date_label.dart';
import 'package:mucomed_flutter/widgets/news_card.dart';

void main() {
  News testNews = News("test titel", "test text", DateTime.now());

  Widget getNewsCard = MaterialApp(home: NewsCard(testNews));

  group("Testing NewsCard Component...", () {
    testWidgets("NewsCard renders a title", (WidgetTester tester) async {
      await tester.pumpWidget(getNewsCard);

      Finder titleFinder = find.text(testNews.title);
      expect(titleFinder, findsOneWidget);
    });

    testWidgets("NewsCard renders a text", (WidgetTester tester) async {
      await tester.pumpWidget(getNewsCard);

      Finder textFinder = find.text(testNews.text);
      expect(textFinder, findsOneWidget);
    });

    testWidgets("NewsCard renders a date", (WidgetTester tester) async {
      await tester.pumpWidget(getNewsCard);

      Finder dateFinder = find.byType(DateLabel);
      expect(dateFinder, findsOneWidget);
    });
  });
}
