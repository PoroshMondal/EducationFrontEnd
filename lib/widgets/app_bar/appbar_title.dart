import 'package:bjit_education/theme/custom_text_style.dart';
import 'package:bjit_education/theme/theme_helper.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
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
        child: Text(
          text,
          style: CustomTextStyles.titleLargeManropeIndigo900.copyWith(
            color: appTheme.indigo900,
          ),
        ),
      ),
    );
  }
}
