import 'package:flutter/material.dart';
import 'package:bjit_education/core/utils/Constants/image_constant.dart';
import 'package:bjit_education/core/utils/size_utils.dart';
import 'package:bjit_education/localization/app_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/widgets/app_bar/appbar_leading_circleimage.dart';
import '../../../../../common/widgets/app_bar/appbar_trailing_image.dart';
import '../../../../../common/widgets/app_bar/custom_app_bar.dart';
import 'bloc/wishlist_bloc.dart';
import 'models/wishlist_item_model.dart';
import 'models/wishlist_model.dart';
import '../wishlist_page/widgets/wishlist_item_widget.dart';
import '../../../../../core/utils/theme/custom_text_style.dart';


// ignore_for_file: must_be_immutable
class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WishlistBloc>(
      create: (context) => WishlistBloc(WishlistState(
        wishlistModelObj: WishlistModel(),
      ))
        ..add(WishlistInitialEvent()),
      child: WishlistPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(top: 13.v),
          child: BlocSelector<WishlistBloc, WishlistState, WishlistModel?>(
            selector: (state) => state.wishlistModelObj,
            builder: (context, wishlistModelObj) {
              return ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 1.v,
                  );
                },
                itemCount: wishlistModelObj?.wishlistItemList.length ?? 0,
                itemBuilder: (context, index) {
                  WishlistItemModel model =
                      wishlistModelObj?.wishlistItemList[index] ??
                          WishlistItemModel();
                  return WishlistItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 55.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse55,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 15.v,
          bottom: 16.v,
        ),
      ),
      title: Container(
        width: 91.h,
        margin: EdgeInsets.only(left: 13.h),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_good_morning".tr,
                style: CustomTextStyles.bodyMediumOleoScriptIndigo900,
              ),
              TextSpan(
                text: " ".tr,
                style: CustomTextStyles.titleLargeSquadaOneIndigo900Regular_1,
              ),
              TextSpan(
                text: "lbl_imtiaz_abir".tr,
                style: CustomTextStyles.titleLargeSquadaOneIndigo900Regular,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 14.v,
            right: 18.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVector,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 18.v,
            right: 38.h,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }
}
