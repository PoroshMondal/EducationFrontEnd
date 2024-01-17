import 'package:flutter/material.dart';
import 'package:bjit_education/core/utils/Constants/image_constant.dart';
import 'package:bjit_education/core/utils/device/size_utils.dart';

import '../../../../../../common/widgets/custom_icon_button.dart';
import '../../../../../../common/widgets/custom_image_view.dart';
import '../../../../../../core/utils/theme/custom_text_style.dart';
import '../../../../../../core/utils/theme/theme_helper.dart';
import '../models/mylearning_item_model.dart';

// ignore: must_be_immutable
class MylearningItemWidget extends StatelessWidget {
  MylearningItemWidget(
    this.mylearningItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MylearningItemModel mylearningItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 86.v,
          width: 97.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: mylearningItemModelObj?.image,
                height: 86.v,
                width: 97.h,
                radius: BorderRadius.circular(
                  16.h,
                ),
                alignment: Alignment.center,
              ),
              CustomIconButton(
                height: 25.adaptSize,
                width: 25.adaptSize,
                padding: EdgeInsets.all(6.h),
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: ImageConstant.imgVectorPrimary,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mylearningItemModelObj.minutePython!,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 3.v),
              Opacity(
                opacity: 0.7,
                child: Text(
                  mylearningItemModelObj.nathanChadler!,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 10.v),
              Container(
                height: 5.v,
                width: 226.h,
                decoration: BoxDecoration(
                  color: appTheme.deepPurple100,
                  borderRadius: BorderRadius.circular(
                    2.h,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    2.h,
                  ),
                  child: LinearProgressIndicator(
                    value: 0.2,
                    backgroundColor: appTheme.deepPurple100,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                mylearningItemModelObj.complete!,
                style: CustomTextStyles.bodySmallBlack900,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
