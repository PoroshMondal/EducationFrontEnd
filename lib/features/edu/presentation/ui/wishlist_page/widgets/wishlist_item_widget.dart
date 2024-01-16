import 'package:bjit_education/core/utils/size_utils.dart';
import 'package:bjit_education/localization/app_localization.dart';

import '../../../../../../common/widgets/custom_elevated_button.dart';
import '../../../../../../common/widgets/custom_image_view.dart';
import '../../../../../../common/widgets/custom_rating_bar.dart';
import '../../../../../../core/utils/theme/app_decoration.dart';
import '../../../../../../core/utils/theme/custom_text_style.dart';
import '../../../../../../core/utils/theme/theme_helper.dart';
import '../models/wishlist_item_model.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class WishlistItemWidget extends StatelessWidget {
  WishlistItemWidget(
    this.wishlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WishlistItemModel wishlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        children: [
          Container(
            height: 86.v,
            width: 98.h,
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 2.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: wishlistItemModelObj?.image,
                  height: 86.v,
                  width: 97.h,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomElevatedButton(
                  height: 24.v,
                  width: 98.h,
                  text: "lbl_bestseller".tr,
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
          ),
          Container(
            height: 85.v,
            width: 193.h,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 5.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      bottom: 26.v,
                    ),
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 0.9,
                          child: Text(
                            wishlistItemModelObj.averageRating!,
                            style: CustomTextStyles.labelMediumExtraBold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: CustomRatingBar(
                            ignoreGestures: true,
                            initialRating: 0,
                          ),
                        ),
                        Opacity(
                          opacity: 0.9,
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              wishlistItemModelObj.reviewCount!,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        wishlistItemModelObj.machineLearning!,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 2.v),
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          wishlistItemModelObj.markLeuZhuMing!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      SizedBox(height: 19.v),
                      Text(
                        wishlistItemModelObj.price!,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
