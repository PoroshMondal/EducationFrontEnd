import 'package:bjit_education/core/utils/size_utils.dart';
import 'package:bjit_education/theme/theme_helper.dart';
import 'package:flutter/material.dart';


/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeAlfaSlabOneOnPrimary =>
      theme.textTheme.bodyLarge!.alfaSlabOne.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyLargeArchivoIndigo900 =>
      theme.textTheme.bodyLarge!.archivo.copyWith(
        color: appTheme.indigo900,
      );
  static get bodyLargeBluegray10002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray10002,
      );
  static get bodyLargeBluegray10003 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray10003,
      );
  static get bodyLargeIndigo900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo900,
        fontSize: 16.fSize,
      );
  static get bodyLargeIndigo900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo900,
      );
  static get bodyLargeIndigo900_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo900,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyLargeRobotoBlack900 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.87),
        fontSize: 16.fSize,
      );
  static get bodyLargeRobotoBlack90016 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.87),
        fontSize: 16.fSize,
      );
  static get bodyLargeRobotoGray90001 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.gray90001,
        fontSize: 16.fSize,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
      );
  static get bodyMediumBluegray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 15.fSize,
      );
  static get bodyMediumBluegray30001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumIndigo900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigo900.withOpacity(0.6),
      );
  static get bodyMediumOleoScriptIndigo900 =>
      theme.textTheme.bodyMedium!.oleoScript.copyWith(
        color: appTheme.indigo900,
        fontSize: 13.fSize,
      );
  static get bodyMediumRobotoBlack900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.87),
      );
  static get bodyMediumRobotoBlack900_1 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.6),
      );
  static get bodyMediumRobotoGray800 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray800,
      );
  static get bodyMediumRobotoGray90001 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodyMedium_2 => theme.textTheme.bodyMedium!;
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 10.fSize,
      );
  static get bodySmallIndigo900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigo900.withOpacity(0.6),
      );
  // Display text style
  static get displaySmallOnPrimary => theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  // Headline text style
  static get headlineMedium27 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 27.fSize,
      );
  static get headlineMediumIndigo90001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.indigo90001,
      );
  static get headlineSmallAntonGray60001 =>
      theme.textTheme.headlineSmall!.anton.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallLimeA200 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.limeA200,
      );
  static get headlineSmallSquadaOneIndigo900 =>
      theme.textTheme.headlineSmall!.squadaOne.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeIndigo900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo900,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumExtraBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get labelMediumGray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeManropeIndigo900 =>
      theme.textTheme.titleLarge!.manrope.copyWith(
        color: appTheme.indigo900,
      );
  static get titleLargeSquadaOneIndigo900 =>
      theme.textTheme.titleLarge!.squadaOne.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSquadaOneIndigo900Regular =>
      theme.textTheme.titleLarge!.squadaOne.copyWith(
        color: appTheme.indigo900,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSquadaOneIndigo900Regular_1 =>
      theme.textTheme.titleLarge!.squadaOne.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w400,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumArchivoIndigo900 =>
      theme.textTheme.titleMedium!.archivo.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumArchivoOnPrimary =>
      theme.textTheme.titleMedium!.archivo.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack90016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.67),
        fontSize: 16.fSize,
      );
  static get titleMediumBlack900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.67),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900Medium16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.67),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900Medium_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray700ab => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray700Ab,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray60001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60001.withOpacity(0.67),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumIndigo900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumIndigo900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRobotoGray5001 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.gray5001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRobotoGray90001 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.gray90001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.67),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray700ab => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700Ab,
        fontSize: 14.fSize,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.67),
        fontSize: 14.fSize,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRobotoDeeppurple500 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.deepPurple500,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoOnPrimary =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get anton {
    return copyWith(
      fontFamily: 'Anton',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get archivo {
    return copyWith(
      fontFamily: 'Archivo',
    );
  }

  TextStyle get oleoScript {
    return copyWith(
      fontFamily: 'Oleo Script',
    );
  }

  TextStyle get alfaSlabOne {
    return copyWith(
      fontFamily: 'Alfa Slab One',
    );
  }

  TextStyle get squadaOne {
    return copyWith(
      fontFamily: 'Squada One',
    );
  }
}
