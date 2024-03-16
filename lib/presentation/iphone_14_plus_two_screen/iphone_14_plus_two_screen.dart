import 'package:sarthak_tyagi_044_s_application6/widgets/custom_text_form_field.dart';
import 'package:sarthak_tyagi_044_s_application6/widgets/custom_elevated_button.dart';
import 'package:sarthak_tyagi_044_s_application6/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:sarthak_tyagi_044_s_application6/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone14PlusTwoScreen extends StatelessWidget {
  Iphone14PlusTwoScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueA200,
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 35.h, vertical: 130.v),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgClipPathGroup,
                                      height: 131.v,
                                      width: 83.h),
                                  SizedBox(height: 19.v),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgUser,
                                            height: 26.v,
                                            width: 25.h,
                                            margin: EdgeInsets.only(
                                                top: 1.v, bottom: 9.v)),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGroup,
                                            height: 27.v,
                                            width: 5.h,
                                            margin: EdgeInsets.only(
                                                left: 4.h, bottom: 9.v)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgContrast,
                                            height: 21.v,
                                            width: 20.h,
                                            margin: EdgeInsets.only(
                                                left: 3.h,
                                                top: 6.v,
                                                bottom: 9.v)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgContrastWhiteA700,
                                            height: 21.adaptSize,
                                            width: 21.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 2.h,
                                                top: 6.v,
                                                bottom: 9.v)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgContrastWhiteA70020x19,
                                            height: 20.v,
                                            width: 19.h,
                                            margin: EdgeInsets.only(
                                                left: 5.h,
                                                top: 6.v,
                                                bottom: 9.v)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgUserWhiteA700,
                                            height: 26.v,
                                            width: 20.h,
                                            margin: EdgeInsets.only(
                                                left: 4.h,
                                                top: 1.v,
                                                bottom: 9.v)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUserWhiteA70030x21,
                                            height: 30.v,
                                            width: 21.h,
                                            margin: EdgeInsets.only(
                                                left: 5.h, top: 6.v))
                                      ]),
                                  SizedBox(height: 5.v),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgContrastWhiteA70010x9,
                                            height: 10.v,
                                            width: 9.h),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgContrastWhiteA7007x8,
                                            height: 7.v,
                                            width: 8.h,
                                            margin: EdgeInsets.only(
                                                left: 12.h, top: 2.v)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgContrastWhiteA70020x19,
                                            height: 7.adaptSize,
                                            width: 7.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 13.h, top: 2.v)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgContrastWhiteA70020x19,
                                            height: 7.adaptSize,
                                            width: 7.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 13.h, top: 2.v)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgContrastWhiteA7007x7,
                                            height: 7.adaptSize,
                                            width: 7.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 13.h, top: 2.v)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgContrastWhiteA70010x9,
                                            height: 7.adaptSize,
                                            width: 7.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 12.h, top: 2.v)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroupWhiteA700,
                                            height: 9.v,
                                            width: 5.h,
                                            margin: EdgeInsets.only(left: 11.h))
                                      ]),
                                  Spacer(),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Email Adress",
                                          style: CustomTextStyles
                                              .titleMediumNunitoBluegray900)),
                                  SizedBox(height: 5.v),
                                  CustomTextFormField(
                                      controller: emailController,
                                      hintText: "Type here..."),
                                  SizedBox(height: 16.v),
                                  _buildPasswordIiDefault(context),
                                  SizedBox(height: 30.v),
                                  CustomElevatedButton(
                                      width: 179.h,
                                      text: "Log in",
                                      margin: EdgeInsets.only(left: 80.h),
                                      onPressed: () {
                                        onTapLogIn(context);
                                      },
                                      alignment: Alignment.centerLeft),
                                  SizedBox(height: 40.v),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 49.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomIconButton(
                                                height: 50.adaptSize,
                                                width: 50.adaptSize,
                                                padding: EdgeInsets.all(8.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGoogle)),
                                            CustomIconButton(
                                                height: 50.adaptSize,
                                                width: 50.adaptSize,
                                                padding: EdgeInsets.all(9.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgFacebook)),
                                            CustomIconButton(
                                                height: 50.adaptSize,
                                                width: 50.adaptSize,
                                                padding: EdgeInsets.all(9.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgLinkedin))
                                          ])),
                                  SizedBox(height: 27.v)
                                ])))))));
  }

  /// Section Widget
  Widget _buildPasswordIiDefault(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Password",
              style: CustomTextStyles.titleMediumNunitoBluegray900),
          SizedBox(height: 5.v),
          CustomTextFormField(
              controller: passwordController,
              hintText: "Type here...",
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              obscureText: true)
        ]));
  }

  /// Navigates to the iphone14PlusThreeContainerScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14PlusThreeContainerScreen);
  }
}
