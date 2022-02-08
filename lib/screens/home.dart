import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mucomed_flutter/model/mucomed/news/news.dart';
import 'package:mucomed_flutter/services/icon_loader_service.dart';
import 'package:mucomed_flutter/widgets/news_card.dart';
import 'package:mucomed_flutter/catalog/fi_icon_catalog.dart';

import '../style.dart';

Map meal = {'name': 'Arme Ritter', 'amount': 'Für 2 Personen'};

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  News info = News(
      "Erstes Release",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pulvinar arcu in placerat varius. Vestibulum sit amet ligula vitae elit feugiat blandit. Praesent est lectus, tempor eu facilisis et, bibendum vitae ipsum. Fusce imperdiet urna dolor, sit amet dignissim neque tempor eu. Curabitur blandit, felis eu pharetra sollicitudin, purus odio malesuada quam, vitae rutrum dui dolor a velit. Donec pellentesque, turpis sagittis consequat cursus, magna est efficitur massa, vitae condimentum lectus felis vitae mi. Integer viverra non arcu eu condimentum. In quis mollis lacus, a venenatis mi. Ut vehicula sed magna sit amet ullamcorper. Pellentesque in nulla lobortis, volutpat erat eu, finibus metus. Ut ut felis nec sem tempus congue. Donec elementum, dui a ultricies dapibus, tellus ligula ultricies ante, interdum lobortis sapien odio sed augue. Cras vel ligula metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pulvinar arcu in placerat varius. Vestibulum sit amet ligula vitae elit feugiat blandit. Praesent est lectus, tempor eu facilisis et, bibendum vitae ipsum. Fusce imperdiet urna dolor, sit amet dignissim neque tempor eu. Curabitur blandit, felis eu pharetra sollicitudin, purus odio malesuada quam, vitae rutrum dui dolor a velit. Donec pellentesque, turpis sagittis consequat cursus, magna est efficitur massa, vitae condimentum lectus felis vitae mi. Integer viverra non arcu eu condimentum. In quis mollis lacus, a venenatis mi. Ut vehicula sed magna sit amet ullamcorper. Pellentesque in nulla lobortis, volutpat erat eu, finibus metus. Ut ut felis nec sem tempus congue. Donec elementum, dui a ultricies dapibus, tellus ligula ultricies ante, interdum lobortis sapien odio sed augue. Cras vel ligula metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pulvinar arcu in placerat varius. Vestibulum sit amet ligula vitae elit feugiat blandit. Praesent est lectus, tempor eu facilisis et, bibendum vitae ipsum. Fusce imperdiet urna dolor, sit amet dignissim neque tempor eu. Curabitur blandit, felis eu pharetra sollicitudin, purus odio malesuada quam, vitae rutrum dui dolor a velit. Donec pellentesque, turpis sagittis consequat cursus, magna est efficitur massa, vitae condimentum lectus felis vitae mi. Integer viverra non arcu eu condimentum. In quis mollis lacus, a venenatis mi. Ut vehicula sed magna sit amet ullamcorper. Pellentesque in nulla lobortis, volutpat erat eu, finibus metus. Ut ut felis nec sem tempus congue. Donec elementum, dui a ultricies dapibus, tellus ligula ultricies ante, interdum lobortis sapien odio sed augue. Cras vel ligula metus.",
      DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: Style.edgeInsetsAll,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hallo",
                  textScaleFactor: Style.fontSizeXL,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
                Text(
                  "Dominique!",
                  textScaleFactor: Style.fontSizeXXL,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ),
          NewsCard(info),
        ],
      ),
    );
  }
}
