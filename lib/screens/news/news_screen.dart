import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mucomed_flutter/model/mucomed/news/news.dart';
import 'package:mucomed_flutter/widgets/app-bar/app_bar_title.dart';
import 'package:mucomed_flutter/widgets/date-label/date_label.dart';

import '../../style.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen(this.news, {Key? key}) : super(key: key);

  final News news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppBarTitle(news.title.toUpperCase()),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DateLabel(news.date),
            ],
          )
        ],
      ),
      body: Card(
        margin: Style.edgeInsetsAll,
        elevation: Style.elevationMD,
        child: SingleChildScrollView(
          child: Padding(
            padding: Style.edgeInsetsAll,
            child: Text(
              news.text,
              textScaleFactor: Style.fontSizeMD,
            ),
          ),
        ),
      ),
    );
  }
}
