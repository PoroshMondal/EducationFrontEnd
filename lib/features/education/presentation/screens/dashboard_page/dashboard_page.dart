import 'package:flutter/material.dart';
import 'package:bjit_education/core/utils/Constants/image_constant.dart';
import 'package:bjit_education/core/utils/device/size_utils.dart';
import 'package:bjit_education/features/education/presentation/screens/dashboard_page/widgets/dashboardpageone_item_widget.dart';
import 'package:bjit_education/features/education/presentation/screens/dashboard_page/widgets/skillsit_item_widget.dart';
import 'package:bjit_education/localization/app_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'bloc/dashboard_page_one_bloc.dart';
import 'models/dashboard_page_one_model.dart';
import 'models/dashboardpageone_item_model.dart';
import 'models/skillsit_item_model.dart';

import '../../../../../core/utils/theme/app_decoration.dart';
import '../../../../../core/utils/theme/custom_text_style.dart';
import '../../../../../core/utils/theme/theme_helper.dart';
import '../../../../../common/widgets/app_bar/appbar_trailing_image.dart';
import '../../../../../common/widgets/app_bar/custom_app_bar.dart';
import '../../../../../common/widgets/custom_image_view.dart';
import '../../../../../common/widgets/app_bar/appbar_leading_circleimage.dart';
import '../../../../../common/widgets/custom_elevated_button.dart';
import '../../../../../core/utils/theme/custom_button_style.dart';

// ignore_for_file: must_be_immutable
class DashboardPageOnePage extends StatelessWidget {
  const DashboardPageOnePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardPageOneBloc>(
      create: (context) => DashboardPageOneBloc(DashboardPageOneState(
        dashboardPageOneModelObj: DashboardPageOneModel(),
      ))
        ..add(DashboardPageOneInitialEvent()),
      child: DashboardPageOnePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 10.v),
            child: Column(
              children: [
                _buildMyCoursesSection(context),
                SizedBox(height: 10.v),
                _buildExploreCategories(context),
                SizedBox(height: 10.v),
                _buildPopularCourseSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 53.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse55,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 15.v,
          bottom: 16.v,
        ),
      ),
      title: Container(
        width: 91.h,
        margin: EdgeInsets.only(left: 13.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_good_morning".tr,
              style: CustomTextStyles.bodyMediumOleoScriptIndigo900,
            ),
            Text(
              "lbl_imtiaz_abir".tr,
              style: CustomTextStyles.titleLargeSquadaOneIndigo900Regular,
            ),
          ],
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

  /// Section Widget
  Widget _buildComplete(BuildContext context) {
    return CustomElevatedButton(
      height: 19.v,
      width: 82.h,
      text: "lbl_15_complete".tr,
      buttonStyle: CustomButtonStyles.fillOnPrimary,
      buttonTextStyle: theme.textTheme.labelSmall!,
    );
  }

  /// Section Widget
  Widget _buildModernSpecializationInData(BuildContext context) {
    return CustomElevatedButton(
      height: 29.v,
      text: "msg_modern_specialization".tr,
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.labelMediumBlack900,
    );
  }

  /// Section Widget
  Widget _buildMyCoursesSection(BuildContext context) {
    return SizedBox(
      height: 191.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.fillOnPrimary,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_my_courses".tr,
                        style: CustomTextStyles.titleMediumBlack900Bold,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: Text(
                          "lbl_view_all".tr,
                          style: CustomTextStyles.labelLargePrimary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.v),
                  Container(
                    height: 125.v,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, // Replace with your actual list
                      itemBuilder: (context, index) {
                        // Customize the Card widget based on your item
                        return Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 4,
                          margin: EdgeInsets.only(right: 10.h),
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),  // Adjust the radius as needed
                              topRight: Radius.circular(8.0), // Adjust the radius as needed
                            ),
                          ),
                          child: Container(
                            height: 125.v,
                            width: 230.h,
                            decoration:
                            AppDecoration.outlineOnPrimaryContainer.copyWith(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),  // Adjust the radius as needed
                                topRight: Radius.circular(8.0), // Adjust the radius as needed
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgPhoto,
                                  height: 125.v,
                                  width: 230.h,
                                  radius: BorderRadius.circular(
                                    8.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                              EdgeInsets.only(bottom: 4.v),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  _buildComplete(context),
                                                  SizedBox(height: 6.v),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgIconOutlinePlayCircle,
                                                    height: 40.v,
                                                    width: 44.h,
                                                    alignment:
                                                    Alignment.centerRight,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              EdgeInsets.only(left: 129.h),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 39.h),
                                                    padding: EdgeInsets.symmetric(
                                                      horizontal: 9.h,
                                                      vertical: 3.v,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8,
                                                    ),
                                                    child: Text(
                                                      "lbl_20_complete".tr,
                                                      style: theme
                                                          .textTheme.labelSmall,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10.v),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgIconOutlinePlayCircle,
                                                    height: 40.v,
                                                    width: 44.h,
                                                    alignment:
                                                    Alignment.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 14.v),
                                      _buildModernSpecializationInData(context),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 7.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildExploreCategories(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "msg_explore_course_categories".tr,
              style: CustomTextStyles.titleMediumBlack900Bold,
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: BlocBuilder<DashboardPageOneBloc, DashboardPageOneState>(
              builder: (context, state) {
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 163.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      state.sliderIndex = index;
                    },
                  ),
                  itemCount:
                      state.dashboardPageOneModelObj?.skillsitItemList.length ??
                          0,
                  itemBuilder: (context, index, realIndex) {
                    SkillsitItemModel model = state.dashboardPageOneModelObj
                            ?.skillsitItemList[index] ??
                        SkillsitItemModel();
                    return SkillsitItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 28.v),
          Align(
            alignment: Alignment.center,
            child: BlocBuilder<DashboardPageOneBloc, DashboardPageOneState>(
              builder: (context, state) {
                return SizedBox(
                  height: 8.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count: state.dashboardPageOneModelObj?.skillsitItemList
                            .length ??
                        0,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 18.26,
                      activeDotColor:
                          theme.colorScheme.primary.withOpacity(0.5),
                      dotColor: appTheme.deepPurple100.withOpacity(0.49),
                      activeDotScale: 1.1428571428571428,
                      dotHeight: 7.v,
                      dotWidth: 6.h,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBestseller(BuildContext context) {
    return CustomElevatedButton(
      width: 80.h,
      text: "lbl_bestseller".tr,
      margin: EdgeInsets.only(bottom: 7.v),
      buttonStyle: CustomButtonStyles.fillYellowA,
      alignment: Alignment.bottomCenter,
    );
  }

  /// Section Widget
  Widget _buildPopularCourseSection(BuildContext context) {
    return SizedBox(
      height: 355.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 54.v),
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillOnPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 248.v),
                    child: Text(
                      "msg_language_learning2".tr,
                      style: CustomTextStyles.titleMediumBlack900Bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 252.v),
                    child: Text(
                      "lbl_see_more".tr,
                      style: CustomTextStyles.labelLargePrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(right: 8.h),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 6.v),
                  Container(
                    width: 173.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 152.v,
                          padding: EdgeInsets.symmetric(horizontal: 186.h),
                          child: BlocSelector<DashboardPageOneBloc,
                              DashboardPageOneState, DashboardPageOneModel?>(
                            selector: (state) => state.dashboardPageOneModelObj,
                            builder: (context, dashboardPageOneModelObj) {
                              return ListView.separated(
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (
                                  context,
                                  index,
                                ) {
                                  return SizedBox(
                                    width: 1.h,
                                  );
                                },
                                itemCount: dashboardPageOneModelObj
                                        ?.dashboardpageoneItemList.length ??
                                    0,
                                itemBuilder: (context, index) {
                                  DashboardpageoneItemModel model =
                                      dashboardPageOneModelObj
                                                  ?.dashboardpageoneItemList[
                                              index] ??
                                          DashboardpageoneItemModel();
                                  return DashboardpageoneItemWidget(
                                    model,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 136.h,
                            child: Text(
                              "msg_the_complete_english".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelLarge!.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 4.v),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 144.h,
                            child: Text(
                              "msg_jk_walker_derek".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray800.copyWith(
                                height: 1.80,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 4.v),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: _buildRatings(
                            context,
                            averageRating: "lbl_4_5".tr,
                            reviewCount: "lbl_498".tr,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "lbl_1999".tr,
                            style: CustomTextStyles.titleMedium16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(left: 24.h),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 6.v),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 152.v,
                          width: 173.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgCoursePhoto154x173,
                                height: 154.v,
                                width: 173.h,
                                alignment: Alignment.center,
                              ),
                              _buildBestseller(context),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 136.h,
                            child: Text(
                              "msg_the_complete_english".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelLarge!.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 4.v),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 144.h,
                            child: Text(
                              "msg_jk_walker_derek".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray800.copyWith(
                                height: 1.80,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 4.v),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: _buildRatings(
                            context,
                            averageRating: "lbl_4_5".tr,
                            reviewCount: "lbl_498".tr,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "lbl_1999".tr,
                            style: CustomTextStyles.titleMedium16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRatings(
    BuildContext context, {
    required String averageRating,
    required String reviewCount,
  }) {
    return Row(
      children: [
        Opacity(
          opacity: 0.9,
          child: Text(
            averageRating,
            style: CustomTextStyles.labelMediumExtraBold.copyWith(
              color: appTheme.black900.withOpacity(0.67),
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgStars,
          height: 15.v,
          width: 72.h,
        ),
        Opacity(
          opacity: 0.9,
          child: Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              reviewCount,
              style: theme.textTheme.labelMedium!.copyWith(
                color: appTheme.black900.withOpacity(0.67),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
