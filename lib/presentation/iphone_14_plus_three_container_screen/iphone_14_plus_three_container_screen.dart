import 'package:sarthak_tyagi_044_s_application6/presentation/iphone_14_plus_three_page/iphone_14_plus_three_page.dart';
import 'package:sarthak_tyagi_044_s_application6/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sarthak_tyagi_044_s_application6/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone14PlusThreeContainerScreen extends StatelessWidget {
  Iphone14PlusThreeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.iphone14PlusThreePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.iphone14PlusThreePage;
      case BottomBarEnum.Userwhitea70045x45:
        return "/";
      case BottomBarEnum.User58x58:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.iphone14PlusThreePage:
        return Iphone14PlusThreePage();
      default:
        return DefaultWidget();
    }
  }
}
