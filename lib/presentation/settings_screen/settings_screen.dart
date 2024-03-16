import 'package:flutter/material.dart';
import 'package:sarthak_tyagi_044_s_application6/core/app_export.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 512.adaptSize,
          width: 512.adaptSize,
        ),
      ),
    );
  }
}
