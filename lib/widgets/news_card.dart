import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mucomed_flutter/model/mucomed/news/news.dart';
import 'package:mucomed_flutter/screens/news/news_screen.dart';
import 'package:mucomed_flutter/style.dart';

import 'date-label/date_label.dart';

class NewsCard extends StatelessWidget {
  const NewsCard(this.news, {Key? key}) : super(key: key);

  final News news;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: Style.edgeInsetsAll,
      elevation: Style.elevationSM,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: Style.edgeInsetsAll,
          child: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    news.title,
                    textScaleFactor: Style.fontSizeTitle,
                    style: TextStyle(
                      height: 1.5,
                      color: Style.colorTitle,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  DateLabel(news.date),
                ],
              ),
              Text(
                (news.text.length > 200) ? news.text.replaceRange(200, news.text.length, "...") : news.text,
                textScaleFactor: Style.fontSizeText,
                style: TextStyle(
                  height: 1.4,
                  color: Colors.grey.shade800,
                ),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen(news)));
              //   },
              //   child: const Text(
              //     "Weiter lesen",
              //     textScaleFactor: Style.fontSizeMD,
              //   ),
              // )
            ]),
          ),
        ),
      ),
    );
  }
}
