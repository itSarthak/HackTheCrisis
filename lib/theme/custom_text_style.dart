import 'package:flutter/material.dart';
import 'package:sarthak_tyagi_044_s_application6/core/utils/size_utils.dart';
import 'package:sarthak_tyagi_044_s_application6/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Headline text style
  static get headlineLargeGray800 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallBlack900Regular =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallGray200 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray200,
      );
  static get headlineSmallGray300 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray300,
      );
  static get headlineSmallGray30001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray30001,
      );
  static get headlineSmallIndigo900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.indigo900,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumNunitoBluegray900 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
