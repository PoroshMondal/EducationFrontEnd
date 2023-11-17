import 'package:bjit_education/core/utils/image_constant.dart';
import 'package:bjit_education/core/utils/size_utils.dart';
import 'package:bjit_education/localization/app_localization.dart';
import 'package:bjit_education/theme/app_decoration.dart';
import 'package:bjit_education/theme/custom_text_style.dart';
import 'package:bjit_education/theme/theme_helper.dart';
import 'package:bjit_education/widgets/app_bar/appbar_leading_image.dart';
import 'package:bjit_education/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bjit_education/widgets/app_bar/custom_app_bar.dart';
import 'package:bjit_education/widgets/custom_checkbox_button.dart';
import 'package:bjit_education/widgets/custom_image_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/account_page_two_bloc.dart';
import 'models/account_page_two_model.dart';
import 'package:flutter/material.dart';


// ignore_for_file: must_be_immutable
class AccountPageTwoPage extends StatelessWidget {
  const AccountPageTwoPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountPageTwoBloc>(
      create: (context) => AccountPageTwoBloc(AccountPageTwoState(
        accountPageTwoModelObj: AccountPageTwoModel(),
      ))
        ..add(AccountPageTwoInitialEvent()),
      child: AccountPageTwoPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 390.h,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              _buildListItem(context),
              _buildChangePassword(
                context,
                fingerprint: ImageConstant.imgAccount,
                label: "lbl_profile_info".tr,
              ),
              _buildChangePassword(
                context,
                fingerprint: ImageConstant.imgFingerprint,
                label: "lbl_change_password".tr,
              ),
              _buildChangePassword(
                context,
                fingerprint: ImageConstant.imgShieldCheck,
                label: "msg_privacy_and_security".tr,
              ),
              _buildDivider(context),
              _buildListItem1(context),
              _buildSingleLineItem(context),
              _buildChangePassword(
                context,
                fingerprint: ImageConstant.imgAlarm,
                label: "lbl_reminder".tr,
              ),
              _buildChangePassword(
                context,
                fingerprint: ImageConstant.imgTime,
                label: "lbl_my_certificates".tr,
              ),
              _buildChangePassword(
                context,
                fingerprint: ImageConstant.imgCreditCard,
                label: "msg_payment_and_order".tr,
              ),
              _buildDivider1(context),
              _buildListItem2(context),
              _buildChangePassword(
                context,
                fingerprint: ImageConstant.imgInfoIndigo900,
                label: "lbl_privacy_policy".tr,
              ),
              _buildChangePassword(
                context,
                fingerprint: ImageConstant.imgLinkIndigo900,
                label: "msg_about_eduemy_school".tr,
              ),
              _buildListItem3(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 53.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgEllipse55,
        margin: EdgeInsets.only(
          left: 21.h,
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
            left: 23.h,
            top: 14.v,
            right: 18.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVector,
          margin: EdgeInsets.only(
            left: 21.h,
            top: 18.v,
            right: 41.h,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildListItem(BuildContext context) {
    return Container(
      width: 390.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 7.v),
          Text(
            "lbl_general".tr,
            style: CustomTextStyles.bodyMediumIndigo900,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDivider(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnPrimary,
      child: Divider(),
    );
  }

  /// Section Widget
  Widget _buildListItem1(BuildContext context) {
    return Container(
      width: 390.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          Text(
            "lbl_features".tr,
            style: CustomTextStyles.bodyMediumIndigo900,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSingleLineItem(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgNotification,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child:
                  BlocSelector<AccountPageTwoBloc, AccountPageTwoState, bool?>(
                selector: (state) => state.allowNotifcations,
                builder: (context, allowNotifcations) {
                  return CustomCheckboxButton(
                    width: 310.h,
                    text: "msg_allow_notifcations".tr,
                    value: allowNotifcations,
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    isRightCheck: true,
                    onChange: (value) {
                      context
                          .read<AccountPageTwoBloc>()
                          .add(ChangeCheckBoxEvent(value: value));
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDivider1(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnPrimary,
      child: Divider(),
    );
  }

  /// Section Widget
  Widget _buildListItem2(BuildContext context) {
    return Container(
      width: 390.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 7.v),
          Text(
            "lbl_services".tr,
            style: CustomTextStyles.bodyMediumIndigo900,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListItem3(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 151.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Text(
            "lbl_sign_out".tr,
            style: CustomTextStyles.headlineSmallAntonGray60001,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildChangePassword(
    BuildContext context, {
    required String fingerprint,
    required String label,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        children: [
          CustomImageView(
            imagePath: fingerprint,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 4.v,
            ),
            child: Text(
              label,
              style: CustomTextStyles.bodyLargeIndigo900.copyWith(
                color: appTheme.indigo900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
