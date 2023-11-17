import 'package:bjit_education/core/utils/image_constant.dart';
import 'package:bjit_education/core/utils/size_utils.dart';
import 'package:bjit_education/localization/app_localization.dart';
import 'package:bjit_education/theme/app_decoration.dart';
import 'package:bjit_education/theme/custom_text_style.dart';
import 'package:bjit_education/theme/theme_helper.dart';
import 'package:bjit_education/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:bjit_education/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bjit_education/widgets/app_bar/custom_app_bar.dart';
import 'package:bjit_education/widgets/custom_image_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../my_learning_page/widgets/mylearning_item_widget.dart';
import 'bloc/my_learning_bloc.dart';
import 'models/my_learning_model.dart';
import 'models/mylearning_item_model.dart';
import 'package:flutter/material.dart';


// ignore_for_file: must_be_immutable
class MyLearningPage extends StatelessWidget {
  const MyLearningPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyLearningBloc>(
      create: (context) => MyLearningBloc(MyLearningState(
        myLearningModelObj: MyLearningModel(),
      ))
        ..add(MyLearningInitialEvent()),
      child: MyLearningPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 10.v),
          padding: EdgeInsets.symmetric(vertical: 1.v),
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 14.v),
              _buildMyLearning(context),
              _buildView(context),
            ],
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

  /// Section Widget
  Widget _buildMyLearning(BuildContext context) {
    return Expanded(
      child: BlocSelector<MyLearningBloc, MyLearningState, MyLearningModel?>(
        selector: (state) => state.myLearningModelObj,
        builder: (context, myLearningModelObj) {
          return ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 25.v,
              );
            },
            itemCount: myLearningModelObj?.mylearningItemList.length ?? 0,
            itemBuilder: (context, index) {
              MylearningItemModel model =
                  myLearningModelObj?.mylearningItemList[index] ??
                      MylearningItemModel();
              return MylearningItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 6.v),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 86.v,
            width: 97.h,
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 2.v,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle245,
                  height: 86.v,
                  width: 97.h,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 23.v,
                    width: 25.h,
                    margin: EdgeInsets.only(
                      left: 34.h,
                      bottom: 28.v,
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 23.v,
                            width: 25.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray100,
                              borderRadius: BorderRadius.circular(
                                12.h,
                              ),
                              border: Border.all(
                                color: theme.colorScheme.primary,
                                width: 2.h,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorPrimary,
                          height: 11.v,
                          width: 8.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 6.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 9.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_web_developments".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 2.v),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    "msg_rahul_giri_jane".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 25.v),
                Text(
                  "lbl_start_course".tr,
                  style: CustomTextStyles.titleSmallPrimary_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
