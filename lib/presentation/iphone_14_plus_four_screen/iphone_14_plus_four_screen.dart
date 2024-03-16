import 'package:flutter/material.dart';
import 'package:sarthak_tyagi_044_s_application6/core/app_export.dart';

class Iphone14PlusFourScreen extends StatelessWidget {
  const Iphone14PlusFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.whiteA700,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    boxShadow: [
                      BoxShadow(
                          color: appTheme.black900.withOpacity(0.25),
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(0, 4))
                    ],
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgIphone14Plus),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 11.h, vertical: 17.v),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11.h, vertical: 5.v),
                              decoration: AppDecoration.fillBluegray90001
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder23),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        height: 35.v,
                                        width: 36.h,
                                        margin: EdgeInsets.only(bottom: 1.v),
                                        decoration:
                                            AppDecoration.fillBluegray90001,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUserBlueGray10001,
                                            height: 35.v,
                                            width: 36.h,
                                            alignment: Alignment.center)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 14.h, top: 2.v, bottom: 3.v),
                                        child: Text("0 N",
                                            style: CustomTextStyles
                                                .headlineSmallGray200))
                                  ])),
                          SizedBox(height: 10.v),
                          Container(
                              margin: EdgeInsets.only(right: 113.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11.h, vertical: 4.v),
                              decoration: AppDecoration.fillBluegray90001
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder23),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgClose,
                                        height: 38.adaptSize,
                                        width: 38.adaptSize,
                                        onTap: () {
                                          onTapImgClose(context);
                                        }),
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            12.h, 5.v, 2.h, 2.v),
                                        child: Text("28.67558, 77.11301",
                                            style: CustomTextStyles
                                                .headlineSmallGray30001))
                                  ])),
                          SizedBox(height: 16.v),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 6.h),
                              decoration: AppDecoration.fillBluegray90001
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder23),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgSlideUp,
                                        height: 46.adaptSize,
                                        width: 46.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            9.h, 7.v, 11.h, 8.v),
                                        child: Text("184 m",
                                            style: CustomTextStyles
                                                .headlineSmallGray300))
                                  ])),
                          Spacer(),
                          SizedBox(height: 19.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 34.h),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.all(10.h),
                                            decoration: AppDecoration
                                                .fillGray90002
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder72),
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapView(context);
                                                },
                                                child: Container(
                                                    height: 125.adaptSize,
                                                    width: 125.adaptSize,
                                                    decoration: BoxDecoration(
                                                        color: appTheme
                                                            .blueGray10001,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    62.h))))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgSearch,
                                            height: 43.v,
                                            width: 41.h,
                                            margin: EdgeInsets.only(
                                                left: 47.h,
                                                top: 51.v,
                                                bottom: 51.v))
                                      ])))
                        ])))));
  }

  /// Navigates back to the previous screen.
  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the iphone14PlusFiveScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14PlusFiveScreen);
  }
}
