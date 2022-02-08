import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mucomed_flutter/model/mucomed/news/news.dart';
import 'package:mucomed_flutter/screens/news/news_screen.dart';

void main() {
  News testNews = News("test titel", "test text", DateTime.now());

  Widget getNewsScreen = MaterialApp(home: NewsScreen(testNews));

  group("Testing NewsScreen Component...", () {
    testWidgets("NewsScreen has a appbar", (WidgetTester tester) async {
      await tester.pumpWidget(getNewsScreen);

      Finder appBar = find.byType(AppBar);
      expect(appBar, findsOneWidget);
    });

    testWidgets("NewsScreen renders a text", (WidgetTester tester) async {
      await tester.pumpWidget(getNewsScreen);

      Finder textFinder = find.text(testNews.text);
      expect(textFinder, findsOneWidget);
    });
  });
}
