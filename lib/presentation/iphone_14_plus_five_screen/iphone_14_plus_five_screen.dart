import 'package:sarthak_tyagi_044_s_application6/presentation/iphone_14_plus_three_page/iphone_14_plus_three_page.dart';
import 'package:sarthak_tyagi_044_s_application6/widgets/custom_text_form_field.dart';
import 'package:sarthak_tyagi_044_s_application6/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sarthak_tyagi_044_s_application6/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone14PlusFiveScreen extends StatelessWidget {
  Iphone14PlusFiveScreen({Key? key}) : super(key: key);

  TextEditingController closeController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray20001,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTwelve(context),
                  SizedBox(height: 16.v),
                  _buildTwenty(context),
                  SizedBox(height: 26.v),
                  _buildFortyFive(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.fillGray,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgBack,
              height: 56.adaptSize,
              width: 56.adaptSize,
              margin: EdgeInsets.only(bottom: 11.v),
              onTap: () {
                onTapImgBack(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 103.h, top: 14.v, bottom: 13.v),
              child: Text("Reports", style: theme.textTheme.headlineLarge))
        ]));
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return Container(
        width: 411.h,
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 58.h, vertical: 18.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Text("Search Reports..", style: theme.textTheme.titleLarge)
            ]));
  }

  /// Section Widget
  Widget _buildFortyFive(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        padding: EdgeInsets.all(13.h),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder37),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgExample2,
              height: 193.v,
              width: 137.h,
              radius: BorderRadius.circular(37.h),
              margin: EdgeInsets.only(bottom: 1.v)),
          Padding(
              padding: EdgeInsets.fromLTRB(10.h, 15.v, 17.h, 13.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text("HackTheCrisis",
                            style: CustomTextStyles.headlineSmallBlack900)),
                    SizedBox(height: 7.v),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text("13/03/2024",
                            style: CustomTextStyles.titleMediumBlack900)),
                    SizedBox(height: 7.v),
                    CustomTextFormField(
                        width: 221.h,
                        controller: closeController,
                        hintText: "28.67558, 77.11301",
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                            margin: EdgeInsets.fromLTRB(8.h, 4.v, 11.h, 4.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgClose,
                                height: 38.adaptSize,
                                width: 38.adaptSize)),
                        prefixConstraints: BoxConstraints(maxHeight: 46.v),
                        contentPadding: EdgeInsets.only(
                            top: 13.v, right: 18.h, bottom: 13.v),
                        borderDecoration: TextFormFieldStyleHelper.fillGray,
                        fillColor: appTheme.gray400),
                    SizedBox(height: 8.v),
                    SizedBox(
                        width: 221.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  padding: EdgeInsets.all(5.h),
                                  decoration: AppDecoration.fillGray400
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder23),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgEye,
                                            height: 35.v,
                                            width: 36.h,
                                            margin:
                                                EdgeInsets.only(bottom: 1.v)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 14.h,
                                                top: 7.v,
                                                bottom: 8.v),
                                            child: Text("0 N",
                                                style: theme
                                                    .textTheme.titleMedium))
                                      ])),
                              Container(
                                  decoration: AppDecoration.fillGray400
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder23),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgSlideUp,
                                            height: 46.adaptSize,
                                            width: 46.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 12.v, bottom: 13.v),
                                            child: Text("184 m",
                                                style: theme
                                                    .textTheme.titleMedium))
                                      ]))
                            ]))
                  ]))
        ]));
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
