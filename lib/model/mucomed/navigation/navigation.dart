import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Navigation {
  List<NavigationItem> navigationItems = [];
}

class NavigationItem {
  NavigationItem(this.title, this.route, this.icon, this.action);

  String title;
  Widget route;
  Icon icon;
  List<Widget> action;
}
