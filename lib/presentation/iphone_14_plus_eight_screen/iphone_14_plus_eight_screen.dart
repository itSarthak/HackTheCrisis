import 'package:sarthak_tyagi_044_s_application6/presentation/iphone_14_plus_three_page/iphone_14_plus_three_page.dart';
import 'package:sarthak_tyagi_044_s_application6/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sarthak_tyagi_044_s_application6/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone14PlusEightScreen extends StatelessWidget {
  Iphone14PlusEightScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 842.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  _buildOne(context),
                  CustomImageView(
                      imagePath: ImageConstant.imgImages1,
                      height: 740.v,
                      width: 427.h,
                      alignment: Alignment.bottomCenter),
                  CustomImageView(
                      imagePath: ImageConstant.img1000F56361977,
                      height: 406.v,
                      width: 411.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 113.v)),
                  CustomImageView(
                      imagePath: ImageConstant.img0005770EiffelTower620,
                      height: 530.v,
                      width: 236.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 94.v))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(bottom: 739.v),
            padding: EdgeInsets.symmetric(vertical: 16.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder1),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgBack,
                  height: 56.adaptSize,
                  width: 56.adaptSize,
                  margin: EdgeInsets.only(bottom: 15.v),
                  onTap: () {
                    onTapImgBack(context);
                  }),
              Padding(
                  padding: EdgeInsets.only(left: 83.h, top: 15.v, bottom: 15.v),
                  child: Text("3D View", style: theme.textTheme.headlineLarge))
            ])));
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

  /// Navigates to the iphone14PlusSevenScreen when the action is triggered.
  onTapImgBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14PlusSevenScreen);
  }
}
