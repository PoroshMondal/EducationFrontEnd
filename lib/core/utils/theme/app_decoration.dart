import 'package:flutter/material.dart';
import 'package:bjit_education/core/utils/device/size_utils.dart';

import 'theme_helper.dart';


class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple500,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillLimeA => BoxDecoration(
        color: appTheme.limeA200,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => const BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.gray5001,
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineDeepPurple => BoxDecoration(
        color: appTheme.gray10001,
        border: Border.all(
          color: appTheme.deepPurple500,
          width: 3.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimaryContainer1 => BoxDecoration(
        color: appTheme.gray10001,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(0.07),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimaryContainer2 => const BoxDecoration();
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder48 => BorderRadius.circular(
        48.h,
      );
  static BorderRadius get circleBorder53 => BorderRadius.circular(
        53.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL12 => BorderRadius.vertical(
        bottom: Radius.circular(12.h),
      );
  static BorderRadius get customBorderBL16 => BorderRadius.vertical(
        bottom: Radius.circular(16.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
