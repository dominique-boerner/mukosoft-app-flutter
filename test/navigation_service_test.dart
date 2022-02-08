import 'package:flutter_test/flutter_test.dart';
import 'package:mucomed_flutter/services/navigation_service.dart';

void main() {
  group("Testing NavigationService ...", () {
    test("NavigationService returns valid mapping", () {
      expect(NavigationService.mainNavigationMap.navigationItems.length, greaterThan(0));
    });

    // test("NavigationService returns icons for navigation elements", () {
    //   expect(NavigationService.mainNavigationIcons.length, greaterThan(0));
    // });
    //
    // test("NavigationService returns actions for navigation elements", () {
    //   expect(NavigationService.mainNavigationActions.length, greaterThan(0));
    // });
  });
}
