import 'package:bjit_education/core/utils/Constants/image_constant.dart';
import 'package:bjit_education/core/utils/size_utils.dart';
import 'package:bjit_education/features/edu/presentation/ui/dashboard_page/dashboard_page.dart';
import 'package:bjit_education/features/edu/presentation/ui/my_learning_page/my_learning_page.dart';
import 'package:bjit_education/features/edu/presentation/ui/wishlist_page/wishlist_page.dart';
import 'package:bjit_education/localization/app_localization.dart';
import 'package:bjit_education/app_routes/app_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/widgets/app_bar/appbar_leading_circleimage.dart';
import '../../../../../common/widgets/app_bar/appbar_trailing_image.dart';
import '../../../../../common/widgets/app_bar/custom_app_bar.dart';
import '../../../../../common/widgets/custom_bottom_bar.dart';
import '../../../../../common/widgets/custom_checkbox_button.dart';
import '../../../../../common/widgets/custom_image_view.dart';
import '../../../../../core/utils/theme/app_decoration.dart';
import '../../../../../core/utils/theme/custom_text_style.dart';
import '../../../../../core/utils/theme/theme_helper.dart';
import 'bloc/account_page_one_bloc.dart';
import 'models/account_page_one_model.dart';
import 'package:flutter/material.dart';


// ignore_for_file: must_be_immutable
class AccountPageOneScreen extends StatelessWidget {
  AccountPageOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountPageOneBloc>(
        create: (context) => AccountPageOneBloc(
            AccountPageOneState(accountPageOneModelObj: AccountPageOneModel()))
          ..add(AccountPageOneInitialEvent()),
        child: AccountPageOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: 390.h,
                child: Column(children: [
                  SizedBox(height: 10.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    _buildProfileCard(context),
                    SizedBox(height: 10.v),
                    SizedBox(
                        height: 778.v,
                        width: 390.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  decoration: AppDecoration.fillOnPrimary,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        _buildListItem(context),
                                        _buildChangePassword(context,
                                            fingerprint:
                                                ImageConstant.imgAccount,
                                            label: "lbl_profile_info".tr),
                                        _buildChangePassword(context,
                                            fingerprint:
                                                ImageConstant.imgFingerprint,
                                            label: "lbl_change_password".tr),
                                        _buildChangePassword(context,
                                            fingerprint:
                                                ImageConstant.imgShieldCheck,
                                            label:
                                                "msg_privacy_and_security".tr),
                                        _buildDivider(context),
                                        _buildListItem1(context),
                                        _buildSingleLineItem(context),
                                        _buildChangePassword(context,
                                            fingerprint: ImageConstant.imgAlarm,
                                            label: "lbl_reminder".tr),
                                        _buildChangePassword(context,
                                            fingerprint: ImageConstant.imgTime,
                                            label: "lbl_my_certificates".tr),
                                        SizedBox(height: 56.v),
                                        _buildChangePassword(context,
                                            fingerprint:
                                                ImageConstant.imgSettings,
                                            label: "msg_advanced_settings".tr),
                                        _buildDivider1(context),
                                        _buildListItem2(context),
                                        _buildChangePassword(context,
                                            fingerprint: ImageConstant.imgInfo,
                                            label: "lbl_privacy_policy".tr),
                                        _buildChangePassword(context,
                                            fingerprint: ImageConstant.imgLink,
                                            label: "msg_visit_www_ui_kit_co".tr,
                                            onTapLabel: () {
                                          onTapTxtVisitwwwuikitco(context);
                                        }),
                                        _buildListItem3(context)
                                      ]))),
                          _buildNavMenu(context)
                        ]))
                  ])))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 54.h,
        leading: AppbarLeadingCircleimage(
            imagePath: ImageConstant.imgEllipse55,
            margin: EdgeInsets.only(left: 21.h, top: 15.v, bottom: 16.v)),
        title: Container(
            width: 91.h,
            margin: EdgeInsets.only(left: 12.h),
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "lbl_good_morning".tr,
                      style: CustomTextStyles.bodyMediumOleoScriptIndigo900),
                  TextSpan(
                      text: " ".tr,
                      style: CustomTextStyles
                          .titleLargeSquadaOneIndigo900Regular_1),
                  TextSpan(
                      text: "lbl_imtiaz_abir".tr,
                      style:
                          CustomTextStyles.titleLargeSquadaOneIndigo900Regular)
                ]),
                textAlign: TextAlign.left)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.only(left: 23.h, top: 14.v, right: 18.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgVector,
              margin: EdgeInsets.only(left: 21.h, top: 18.v, right: 41.h))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildProfileCard(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 42.h, vertical: 12.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              height: 106.adaptSize,
              width: 106.adaptSize,
              padding: EdgeInsets.all(2.h),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder53),
              child: CustomImageView(
                  imagePath: ImageConstant.imgProfilePic,
                  height: 96.adaptSize,
                  width: 96.adaptSize,
                  radius: BorderRadius.circular(48.h),
                  alignment: Alignment.center)),
          SizedBox(height: 4.v),
          Text("lbl_imtiaz_abir".tr, style: CustomTextStyles.headlineMedium27),
          SizedBox(height: 14.v),
          Padding(
              padding: EdgeInsets.only(right: 2.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      Opacity(
                          opacity: 0.7,
                          child: Text("lbl_enrolled".tr,
                              style: CustomTextStyles.bodySmallIndigo900)),
                      Text("lbl_50".tr,
                          style:
                              CustomTextStyles.headlineSmallSquadaOneIndigo900)
                    ]),
                    Column(children: [
                      Opacity(
                          opacity: 0.7,
                          child: Text("lbl_completed".tr,
                              style: CustomTextStyles.bodySmallIndigo900)),
                      Text("lbl_20".tr,
                          style:
                              CustomTextStyles.headlineSmallSquadaOneIndigo900)
                    ]),
                    Column(children: [
                      Opacity(
                          opacity: 0.7,
                          child: Text("lbl_wishlisted".tr,
                              style: CustomTextStyles.bodySmallIndigo900)),
                      Text("lbl_100".tr,
                          style:
                              CustomTextStyles.headlineSmallSquadaOneIndigo900)
                    ])
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildListItem(BuildContext context) {
    return Container(
        width: 390.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
        decoration: AppDecoration.outlineBlack,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 7.v),
              Text("lbl_general".tr,
                  style: CustomTextStyles.bodyMediumIndigo900)
            ]));
  }

  /// Section Widget
  Widget _buildDivider(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimary,
        child: Divider());
  }

  /// Section Widget
  Widget _buildListItem1(BuildContext context) {
    return Container(
        width: 390.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlack,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 8.v),
              Text("lbl_features".tr,
                  style: CustomTextStyles.bodyMediumBlack900)
            ]));
  }

  /// Section Widget
  Widget _buildSingleLineItem(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimary,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgNotification,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: BlocSelector<AccountPageOneBloc, AccountPageOneState,
                          bool?>(
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
                                  .read<AccountPageOneBloc>()
                                  .add(ChangeCheckBoxEvent(value: value));
                            });
                      })))
        ]));
  }

  /// Section Widget
  Widget _buildDivider1(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimary,
        child: Divider());
  }

  /// Section Widget
  Widget _buildListItem2(BuildContext context) {
    return Container(
        width: 390.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
        decoration: AppDecoration.outlineBlack,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 8.v),
              Text("lbl_services".tr,
                  style: CustomTextStyles.bodyMediumRobotoBlack900_1)
            ]));
  }

  /// Section Widget
  Widget _buildListItem3(BuildContext context) {
    return Container(
        width: 390.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.outlineBlack,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 16.v),
              Text("lbl_clear_cache".tr,
                  style: CustomTextStyles.bodyMediumRobotoBlack900)
            ]));
  }

  /// Section Widget
  Widget _buildNavMenu(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(bottom: 226.v),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 19.h, vertical: 11.v),
                  decoration: AppDecoration.fillOnPrimary,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgNavDashboard,
                            height: 32.v,
                            width: 40.h),
                        SizedBox(height: 4.v),
                        Text("lbl_dashboard".tr,
                            style: CustomTextStyles.bodySmallGray60001),
                        SizedBox(height: 2.v)
                      ])),
              _buildNavItem3(context,
                  icon: ImageConstant.imgNavMyLearningGray400,
                  wishlist: "lbl_my_learning".tr),
              _buildNavItem3(context,
                  icon: ImageConstant.imgNavWishlist,
                  wishlist: "lbl_wishlist".tr),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 13.v),
                  decoration: AppDecoration.fillOnPrimary,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 30.v,
                            width: 64.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.h, vertical: 2.v),
                            decoration: AppDecoration.fillGray100.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgIcons,
                                height: 26.v,
                                width: 36.h,
                                alignment: Alignment.center)),
                        SizedBox(height: 4.v),
                        Text("lbl_account".tr,
                            style: CustomTextStyles.labelLargeIndigo900),
                        SizedBox(height: 2.v)
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildChangePassword(
    BuildContext context, {
    required String fingerprint,
    required String label,
    Function? onTapLabel,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Row(children: [
          CustomImageView(
              imagePath: fingerprint,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 1.v)),
          GestureDetector(onTap: () {
            onTapLabel!.call();
          }),
          Padding(
              padding: EdgeInsets.only(left: 24.h, top: 4.v),
              child: Text(label,
                  style: CustomTextStyles.bodyLargeIndigo900
                      .copyWith(color: appTheme.indigo900)))
        ]));
  }

  /// Common widget
  Widget _buildNavItem3(
    BuildContext context, {
    required String icon,
    required String wishlist,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 12.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: icon, height: 32.adaptSize, width: 32.adaptSize),
          SizedBox(height: 4.v),
          Text(wishlist,
              style: CustomTextStyles.bodySmallGray60001
                  .copyWith(color: appTheme.gray60001)),
          SizedBox(height: 2.v)
        ]));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Dashboard:
        return AppRoutes.dashboardPageOnePage;
      case BottomBarEnum.Mylearning:
        return AppRoutes.myLearningPage;
      case BottomBarEnum.Wishlist:
        return AppRoutes.wishlistPage;
      case BottomBarEnum.Account:
        return AppRoutes.accountPageTwoPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.dashboardPageOnePage:
        return DashboardPageOnePage.builder(context);
      case AppRoutes.myLearningPage:
        return MyLearningPage.builder(context);
      case AppRoutes.wishlistPage:
        return WishlistPage.builder(context);
      case AppRoutes.accountPageTwoPage:
        //return AccountPageTwoPage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  onTapTxtVisitwwwuikitco(BuildContext context) {
    // TODO: implement Actions
  }
}
