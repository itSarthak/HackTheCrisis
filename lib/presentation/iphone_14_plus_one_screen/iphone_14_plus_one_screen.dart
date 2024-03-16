import 'package:flutter/material.dart';
import 'package:sarthak_tyagi_044_s_application6/core/app_export.dart';

class Iphone14PlusOneScreen extends StatelessWidget {
  const Iphone14PlusOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueA200,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgLogo11,
                height: 500.v,
                width: 428.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
