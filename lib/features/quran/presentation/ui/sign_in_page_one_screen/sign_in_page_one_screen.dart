import 'package:bjit_education/core/utils/image_constant.dart';
import 'package:bjit_education/core/utils/navigator_service.dart';
import 'package:bjit_education/core/utils/size_utils.dart';
import 'package:bjit_education/localization/app_localization.dart';
import 'package:bjit_education/routes/app_routes.dart';
import 'package:bjit_education/theme/custom_button_style.dart';
import 'package:bjit_education/theme/custom_text_style.dart';
import 'package:bjit_education/theme/theme_helper.dart';
import 'package:bjit_education/widgets/custom_image_view.dart';
import 'package:bjit_education/widgets/custom_outlined_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/sign_in_page_one_bloc.dart';
import 'models/sign_in_page_one_model.dart';
import 'package:flutter/material.dart';


class SignInPageOneScreen extends StatelessWidget {
  const SignInPageOneScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInPageOneBloc>(
      create: (context) => SignInPageOneBloc(SignInPageOneState(
        signInPageOneModelObj: SignInPageOneModel(),
      ))
        ..add(SignInPageOneInitialEvent()),
      child: SignInPageOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SignInPageOneBloc, SignInPageOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 35.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Text(
                    "lbl_sign_in2".tr,
                    style: theme.textTheme.displaySmall,
                  ),
                  SizedBox(height: 23.v),
                  Container(
                    width: 317.h,
                    margin: EdgeInsets.only(left: 4.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_by_using_our_services2".tr,
                            style: CustomTextStyles.bodyLargeIndigo900_1,
                          ),
                          TextSpan(
                            text: "lbl_terms".tr,
                            style: CustomTextStyles.titleMediumIndigo900Bold,
                          ),
                          TextSpan(
                            text: "lbl_and".tr,
                            style: CustomTextStyles.bodyLargeIndigo900_1,
                          ),
                          TextSpan(
                            text: "msg_privacy_statement".tr,
                            style: CustomTextStyles.titleMediumIndigo900Bold,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 67.v),
                  CustomOutlinedButton(
                    text: "msg_sign_in_with_email".tr,
                    leftIcon: Container(
                      margin: EdgeInsets.only(left: 20.h),
                      child: CustomImageView(
                        imagePath: ImageConstant
                            .img_transparent_email,
                        height: 24.v,
                        width: 24.h,
                      ),
                    ),
                    buttonTextStyle: CustomTextStyles.bodyLargeIndigo900_2,
                  ),
                  SizedBox(height: 25.v),
                  CustomOutlinedButton(
                    text: "msg_sign_in_with_google".tr,
                    leftIcon: Container(
                      margin: EdgeInsets.only(left: 20.h),
                      child: CustomImageView(
                        imagePath:
                        ImageConstant.imgGoogleiconesymbolepnglogobleu1,
                        height: 24.v,
                        width: 24.h,
                      ),
                    ),
                    buttonTextStyle: theme.textTheme.bodyLarge!,
                  ),
                  SizedBox(height: 25.v),
                  CustomOutlinedButton(
                    text: "msg_sign_in_with_facebook".tr,
                    leftIcon: Container(
                      margin: EdgeInsets.only(left: 20.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFacebookiconwhitepng1,
                        height: 31.adaptSize,
                        width: 31.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.outlinePrimary,
                    buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary,
                  ),
                  SizedBox(height: 90.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_new_here".tr,
                          style: CustomTextStyles.bodyLargeIndigo900_1,
                        ),
                        TextSpan(
                          text: "msg_create_an_account".tr,
                          style: CustomTextStyles.titleMediumIndigo900Bold,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              NavigatorService.popAndPushNamed(
                                //AppRoutes.dashboardPageOneContainerScreen,
                                  AppRoutes.signInPageTwoScreen
                              );
                            },
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
