import 'package:bjit_education/core/utils/image_constant.dart';
import 'package:bjit_education/core/utils/navigator_service.dart';
import 'package:bjit_education/core/utils/size_utils.dart';
import 'package:bjit_education/localization/app_localization.dart';
import 'package:bjit_education/routes/app_routes.dart';
import 'package:bjit_education/theme/app_decoration.dart';
import 'package:bjit_education/theme/custom_text_style.dart';
import 'package:bjit_education/theme/theme_helper.dart';
import 'package:bjit_education/widgets/custom_image_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'bloc/onboarding_page_one_bloc.dart';
import 'models/onboarding_page_one_model.dart';
import 'package:flutter/material.dart';

class OnboardingPageOneScreen extends StatelessWidget {
  const OnboardingPageOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingPageOneBloc>(
        create: (context) => OnboardingPageOneBloc(OnboardingPageOneState(
            onboardingPageOneModelObj: OnboardingPageOneModel()))
          ..add(OnboardingPageOneInitialEvent()),
        child: OnboardingPageOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OnboardingPageOneBloc, OnboardingPageOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
              body: Stack(
                children: [
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 29.h),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 18.v),
                            CustomImageView(
                                imagePath: ImageConstant.img262087P54a5g558,
                                height: 316.v,
                                width: 335.h),
                            SizedBox(height: 52.v),
                            SizedBox(
                                height: 14.v,
                                child: AnimatedSmoothIndicator(
                                    activeIndex: 0,
                                    count: 3,
                                    effect: ScrollingDotsEffect(
                                        spacing: 33,
                                        activeDotColor: appTheme.red200,
                                        dotColor: appTheme.blueGray10001,
                                        activeDotScale: 1.1666666666666667,
                                        dotHeight: 12.v,
                                        dotWidth: 12.h))),
                            SizedBox(height: 48.v),
                            Text("msg_watch_video_courses".tr,
                                style:
                                    CustomTextStyles.headlineMediumIndigo90001),
                            SizedBox(height: 13.v),
                            SizedBox(
                                width: 227.h,
                                child: Text("msg_from_cooking_to".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style:
                                        CustomTextStyles.bodyLargeIndigo900_2))
                          ])),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: _buildButtons(context),
                  ),
                ],
              )));
    });
  }

  Widget _buildButtons(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.blue, // Set the background color to blue
      //margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "BROWSE",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'AlfaSlabOneRegular'),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                //use bloc provider
                NavigatorService.popAndPushNamed(
                  //AppRoutes.dashboardPageOneContainerScreen,
                    AppRoutes.signInPageOneScreen
                );
              },
              child: Text(
                "SIGN IN",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
