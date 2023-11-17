import 'package:bjit_education/core/utils/size_utils.dart';
import 'package:bjit_education/theme/app_decoration.dart';
import 'package:bjit_education/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class AppbarLeadingCircleimage extends StatelessWidget {
  AppbarLeadingCircleimage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder16,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 33.adaptSize,
          width: 33.adaptSize,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            16.h,
          ),
        ),
      ),
    );
  }
}
