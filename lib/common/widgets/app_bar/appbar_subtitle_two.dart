import 'package:bjit_education/core/utils/device/size_utils.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/theme/app_decoration.dart';
import '../../../core/utils/theme/custom_text_style.dart';
import '../../../core/utils/theme/theme_helper.dart';

// ignore: must_be_immutable
class AppbarSubtitleTwo extends StatelessWidget {
  AppbarSubtitleTwo({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          width: 91.h,
          decoration: AppDecoration.fillDeepPurple.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: Text(
            text,
            style: CustomTextStyles.titleMediumRobotoGray5001.copyWith(
              color: appTheme.gray5001,
            ),
          ),
        ),
      ),
    );
  }
}
