import 'package:flutter/material.dart';
import 'package:sarthak_tyagi_044_s_application6/core/app_export.dart';

class Iphone14PlusSevenScreen extends StatelessWidget {
  const Iphone14PlusSevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildOne(context),
                  SizedBox(height: 36.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgScreenshotFrom,
                      height: 245.v,
                      width: 385.h),
                  SizedBox(height: 33.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgScreenshotFrom338x385,
                      height: 338.v,
                      width: 385.h),
                  SizedBox(height: 87.v),
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 34.h, vertical: 16.v),
                      decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgHome,
                                height: 34.v,
                                width: 38.h,
                                margin: EdgeInsets.only(
                                    left: 15.h, top: 12.v, bottom: 838.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgUserWhiteA70045x45,
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                margin:
                                    EdgeInsets.only(top: 8.v, bottom: 831.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgUser58x58,
                                height: 58.adaptSize,
                                width: 58.adaptSize,
                                margin: EdgeInsets.only(bottom: 827.v))
                          ]))
                ])))));
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
        width: double.maxFinite,
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
              padding: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 15.v),
              child: Text("Plastic Calculator",
                  style: theme.textTheme.headlineLarge))
        ]));
  }

  /// Navigates to the iphone14PlusThreeContainerScreen when the action is triggered.
  onTapImgBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14PlusThreeContainerScreen);
  }
}
