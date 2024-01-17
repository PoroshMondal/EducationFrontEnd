import 'package:bjit_education/core/utils/device/size_utils.dart';

import 'package:flutter/material.dart';

import 'theme_helper.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillDeepPurple => ElevatedButton.styleFrom(
        backgroundColor: appTheme.deepPurple500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );

  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray50,
        shape: const RoundedRectangleBorder(),
      );

  static ButtonStyle get fillLimeA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.limeA200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.h),
        ),
      );

  static ButtonStyle get fillLimeATL22 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.limeA200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );

  static ButtonStyle get fillOnPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.h),
        ),
      );

  static ButtonStyle get fillOnPrimary1 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
      );

  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
      );

  static ButtonStyle get fillYellowA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.yellowA200.withOpacity(0.89),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineDeepPurple => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: appTheme.deepPurple500,
          width: 3,
        ),
        shape: const RoundedRectangleBorder(),
      );

  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: appTheme.gray10001,
          width: 1,
        ),
        shape: const RoundedRectangleBorder(),
      );

  static ButtonStyle get outlineGrayTL20 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.gray600,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );

  static ButtonStyle get outlineIndigo => OutlinedButton.styleFrom(
        backgroundColor: appTheme.indigo50,
        side: BorderSide(
          color: appTheme.indigo50,
          width: 1,
        ),
        shape: const RoundedRectangleBorder(),
      );

  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: const RoundedRectangleBorder(),
      );

  static ButtonStyle get outlinePrimary1 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 3,
        ),
        shape: const RoundedRectangleBorder(),
      );

  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
