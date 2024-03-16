import 'package:flutter/material.dart';
import 'package:sarthak_tyagi_044_s_application6/core/app_export.dart';

class Iphone14PlusThreePage extends StatelessWidget {
  const Iphone14PlusThreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  _buildNine(context),
                  SizedBox(height: 75.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 33.h),
                      child: _buildFive(context, report: "Community",
                          onTapFive: () {
                        onTapSeven(context);
                      })),
                  SizedBox(height: 26.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.h),
                      child:
                          _buildFive(context, report: "Report", onTapFive: () {
                        onTapFive(context);
                      })),
                  SizedBox(height: 26.v),
                  Padding(
                      padding: EdgeInsets.only(left: 28.h, right: 38.h),
                      child: _buildFive(context, report: "FootPrint",
                          onTapFive: () {
                        onTapFour(context);
                      })),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.fillGray,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgBack,
              height: 56.adaptSize,
              width: 56.adaptSize,
              margin: EdgeInsets.only(bottom: 15.v)),
          Padding(
              padding: EdgeInsets.only(left: 109.h, top: 8.v, bottom: 23.v),
              child: Text("Home", style: theme.textTheme.headlineLarge))
        ]));
  }

  /// Common widget
  Widget _buildFive(
    BuildContext context, {
    required String report,
    Function? onTapFive,
  }) {
    return GestureDetector(
        onTap: () {
          onTapFive!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 17.v),
            decoration: AppDecoration.fillBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder37),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 17.v, bottom: 19.v),
                      child: Text(report,
                          style: CustomTextStyles.headlineLargeGray800
                              .copyWith(color: appTheme.gray800))),
                  CustomImageView(
                      imagePath: ImageConstant.imgRightArrow,
                      height: 76.adaptSize,
                      width: 76.adaptSize,
                      margin: EdgeInsets.only(right: 2.h))
                ])));
  }

  /// Navigates to the iphone14PlusSixScreen when the action is triggered.
  onTapSeven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14PlusSixScreen);
  }

  /// Navigates to the iphone14PlusFourScreen when the action is triggered.
  onTapFive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14PlusFourScreen);
  }

  /// Navigates to the iphone14PlusSevenScreen when the action is triggered.
  onTapFour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14PlusSevenScreen);
  }
}
