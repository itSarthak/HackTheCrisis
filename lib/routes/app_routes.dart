import 'package:flutter/material.dart';
import '../presentation/iphone_14_plus_two_screen/iphone_14_plus_two_screen.dart';
import '../presentation/iphone_14_plus_one_screen/iphone_14_plus_one_screen.dart';
import '../presentation/iphone_14_plus_three_container_screen/iphone_14_plus_three_container_screen.dart';
import '../presentation/iphone_14_plus_seven_screen/iphone_14_plus_seven_screen.dart';
import '../presentation/iphone_14_plus_eight_screen/iphone_14_plus_eight_screen.dart';
import '../presentation/iphone_14_plus_six_screen/iphone_14_plus_six_screen.dart';
import '../presentation/iphone_14_plus_four_screen/iphone_14_plus_four_screen.dart';
import '../presentation/iphone_14_plus_five_screen/iphone_14_plus_five_screen.dart';
import '../presentation/settings_screen/settings_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone14PlusTwoScreen = '/iphone_14_plus_two_screen';

  static const String iphone14PlusOneScreen = '/iphone_14_plus_one_screen';

  static const String iphone14PlusThreeContainerScreen =
      '/iphone_14_plus_three_container_screen';

  static const String iphone14PlusThreePage = '/iphone_14_plus_three_page';

  static const String iphone14PlusSevenScreen = '/iphone_14_plus_seven_screen';

  static const String iphone14PlusEightScreen = '/iphone_14_plus_eight_screen';

  static const String iphone14PlusSixScreen = '/iphone_14_plus_six_screen';

  static const String iphone14PlusFourScreen = '/iphone_14_plus_four_screen';

  static const String iphone14PlusFiveScreen = '/iphone_14_plus_five_screen';

  static const String settingsScreen = '/settings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone14PlusTwoScreen: (context) => Iphone14PlusTwoScreen(),
    iphone14PlusOneScreen: (context) => Iphone14PlusOneScreen(),
    iphone14PlusThreeContainerScreen: (context) =>
        Iphone14PlusThreeContainerScreen(),
    iphone14PlusSevenScreen: (context) => Iphone14PlusSevenScreen(),
    iphone14PlusEightScreen: (context) => Iphone14PlusEightScreen(),
    iphone14PlusSixScreen: (context) => Iphone14PlusSixScreen(),
    iphone14PlusFourScreen: (context) => Iphone14PlusFourScreen(),
    iphone14PlusFiveScreen: (context) => Iphone14PlusFiveScreen(),
    settingsScreen: (context) => SettingsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
