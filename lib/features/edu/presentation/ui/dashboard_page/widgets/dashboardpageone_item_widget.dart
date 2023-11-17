import 'package:bjit_education/core/utils/size_utils.dart';
import 'package:bjit_education/localization/app_localization.dart';
import 'package:bjit_education/theme/custom_button_style.dart';
import 'package:bjit_education/widgets/custom_elevated_button.dart';
import 'package:bjit_education/widgets/custom_image_view.dart';

import '../models/dashboardpageone_item_model.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class DashboardpageoneItemWidget extends StatelessWidget {
  DashboardpageoneItemWidget(
    this.dashboardpageoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DashboardpageoneItemModel dashboardpageoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 173.v,
      width: 175.h,
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: dashboardpageoneItemModelObj?.coursePhoto,
            height: 154.v,
            width: 173.h,
            alignment: Alignment.topCenter,
          ),
          CustomElevatedButton(
            width: 80.h,
            text: "lbl_bestseller".tr,
            margin: EdgeInsets.only(bottom: 26.v),
            buttonStyle: CustomButtonStyles.fillYellowA,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
