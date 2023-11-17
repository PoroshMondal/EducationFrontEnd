import 'package:bjit_education/core/utils/size_utils.dart';
import 'package:bjit_education/theme/app_decoration.dart';
import 'package:bjit_education/theme/custom_text_style.dart';
import 'package:bjit_education/widgets/custom_image_view.dart';

import '../models/skillsit_item_model.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class SkillsitItemWidget extends StatelessWidget {
  SkillsitItemWidget(
    this.skillsitItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SkillsitItemModel skillsitItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 163.v,
        width: 139.h,
        margin: EdgeInsets.only(right: 231.h),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 163.v,
                width: 137.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 32.h,
                  vertical: 25.v,
                ),
                decoration: AppDecoration.outlineOnPrimaryContainer1,
                child: CustomImageView(
                  imagePath: skillsitItemModelObj?.image,
                  height: 75.v,
                  width: 72.h,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 137.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 4.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillOnPrimary,
                child: Text(
                  skillsitItemModelObj.languageLearning!,
                  style: CustomTextStyles.titleSmallSemiBold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
