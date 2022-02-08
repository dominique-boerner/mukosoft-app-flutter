import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mucomed_flutter/catalog/fi_icon_catalog.dart';
import 'package:mucomed_flutter/model/mucomed/navigation/navigation.dart';
import 'package:mucomed_flutter/screens/home.dart';
import 'package:mucomed_flutter/screens/medication/medication_creation_screen.dart';
import 'package:mucomed_flutter/screens/medication/medication_screen.dart';
import 'package:mucomed_flutter/services/icon_loader_service.dart';
import 'package:mucomed_flutter/widgets/svg-action-icon/svg_action_icon.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class NavigationService {
  static Navigation get mainNavigationMap {
    // actions, which are visible on every page
    List<Widget> defaultActions = <Widget>[
      SvgActionIcon(
        svg: IconLoadService.loadUiIcon(icon: FiIconCatalog.settings_sliders),
        onTap: () => print(
          "Einstellungen klick",
        ),
      )
    ];

    Navigation mainNavigationMap = Navigation();
    mainNavigationMap.navigationItems.add(
      NavigationItem(
          "",
          const HomePage(),
          const Icon(
            Icons.home_rounded,
            color: Colors.teal,
          ),
          defaultActions),
    );
    mainNavigationMap.navigationItems.add(
      NavigationItem(
          "MEDIKAMENTE",
          const MedicationScreen(),
          const Icon(
            Icons.medication_rounded,
            color: Colors.teal,
          ),
          [
            ...defaultActions,
            Builder(
                builder: (BuildContext context) => IconButton(
                      icon: const Icon(Icons.add_rounded),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MedicationCreationScreen()));
                      },
                    )),
          ]),
    );

    return mainNavigationMap;
  }

  static List<Widget> get mainNavigationIcons {
    List<Widget> icons = [];

    for (var element in NavigationService.mainNavigationMap.navigationItems) {
      icons.add(element.icon);
    }

    return icons;
  }

  static List<List<Widget>> get mainNavigationActions {
    List<List<Widget>> actions = [];

    for (var element in NavigationService.mainNavigationMap.navigationItems) {
      actions.add(element.action);
    }

    return actions;
  }
}
