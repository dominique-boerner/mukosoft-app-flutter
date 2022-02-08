import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mucomed_flutter/catalog/fi_icon_catalog.dart';
import 'package:mucomed_flutter/screens/home.dart';
import 'package:mucomed_flutter/screens/medication/medication_screen.dart';
import 'package:mucomed_flutter/services/icon_loader_service.dart';
import 'package:mucomed_flutter/services/navigation_service.dart';
import 'package:mucomed_flutter/widgets/app-bar/app_bar_title.dart';
import 'package:mucomed_flutter/widgets/svg-action-icon/svg_action_icon.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../style.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Theme.of(context).primaryColor,
        title: AppBarTitle(NavigationService.mainNavigationMap.navigationItems
            .elementAt(_selectedIndex)
            .title),
        leading: SvgActionIcon(
          svg: IconLoadService.loadUiIcon(
            icon: FiIconCatalog.apps,
            color: Colors.white,
            height: 20,
          ),
          onTap: () => Navigator.pushNamed(context, "/profil"),
        ),
        actions:
            NavigationService.mainNavigationActions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Theme.of(context).bottomAppBarColor,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        buttonBackgroundColor: Theme.of(context).bottomAppBarColor,
        items: NavigationService.mainNavigationIcons,
        index: _selectedIndex,
        onTap: (i) => _onItemTap(i),
      ),
      body: Center(
        child: NavigationService.mainNavigationMap.navigationItems
            .elementAt(_selectedIndex)
            .route,
      ),
    );
  }
}
