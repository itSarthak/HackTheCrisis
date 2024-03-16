import 'package:sarthak_tyagi_044_s_application6/presentation/iphone_14_plus_three_page/iphone_14_plus_three_page.dart';
import 'package:sarthak_tyagi_044_s_application6/widgets/custom_drop_down.dart';
import 'package:sarthak_tyagi_044_s_application6/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sarthak_tyagi_044_s_application6/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone14PlusSixScreen extends StatelessWidget {
  Iphone14PlusSixScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildOne(context),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: CustomDropDown(
                              width: 228.h,
                              icon: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      13.h, 13.v, 18.h, 4.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgExpandArrow,
                                      height: 38.adaptSize,
                                      width: 38.adaptSize)),
                              hintText: "Sort By",
                              items: dropdownItemList,
                              prefix: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(18.h, 3.v, 13.h, 8.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgFunnel,
                                      height: 44.adaptSize,
                                      width: 44.adaptSize)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 55.v))),
                      SizedBox(height: 22.v),
                      _buildFourteen(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.fillGray,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgBack,
              height: 56.adaptSize,
              width: 56.adaptSize,
              margin: EdgeInsets.only(bottom: 15.v),
              onTap: () {
                onTapImgBack(context);
              }),
          Container(
              height: 39.v,
              width: 182.h,
              margin: EdgeInsets.only(left: 67.h, top: 12.v, bottom: 19.v),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Text("Community",
                        style: theme.textTheme.headlineLarge)),
                Align(
                    alignment: Alignment.center,
                    child:
                        Text("Community", style: theme.textTheme.headlineLarge))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(left: 4.h),
        color: appTheme.whiteA700.withOpacity(0.8),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder37),
        child: Container(
            height: 425.v,
            width: 420.h,
            padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 7.v),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder37),
            child: Stack(alignment: Alignment.bottomRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgExample2,
                  height: 346.v,
                  width: 384.h,
                  radius: BorderRadius.circular(37.h),
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 7.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgForwardArrow,
                  height: 53.v,
                  width: 42.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 84.h)),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 7.h, right: 13.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("HackTheCrisis",
                                    style: CustomTextStyles
                                        .headlineSmallWhiteA700)),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("13/03/2024",
                                    style:
                                        CustomTextStyles.titleMediumWhiteA700)),
                            SizedBox(height: 294.v),
                            Row(children: [
                              Container(
                                  width: 143.h,
                                  margin: EdgeInsets.only(top: 1.v),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 14.h, vertical: 6.v),
                                  decoration: AppDecoration.fillGray400
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder23),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEye32x32,
                                        height: 32.adaptSize,
                                        width: 32.adaptSize,
                                        margin: EdgeInsets.only(bottom: 2.v)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 9.h, bottom: 2.v),
                                        child: Text("123",
                                            style:
                                                theme.textTheme.headlineSmall))
                                  ])),
                              Container(
                                  height: 46.v,
                                  width: 143.h,
                                  margin: EdgeInsets.only(left: 80.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 18.h, vertical: 1.v),
                                  decoration: AppDecoration.fillGray400
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder23),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgBookmark,
                                      height: 44.adaptSize,
                                      width: 44.adaptSize,
                                      alignment: Alignment.centerRight))
                            ])
                          ])))
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

  /// Navigates to the iphone14PlusThreeContainerScreen when the action is triggered.
  onTapImgBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14PlusThreeContainerScreen);
  }
}
