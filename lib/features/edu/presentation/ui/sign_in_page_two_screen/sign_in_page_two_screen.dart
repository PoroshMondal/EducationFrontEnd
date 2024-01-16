import 'package:flutter/material.dart';
import 'package:bjit_education/core/utils/Constants/image_constant.dart';
import 'package:bjit_education/core/utils/navigator_service.dart';
import 'package:bjit_education/core/utils/size_utils.dart';
import 'package:bjit_education/core/utils/validation_functions.dart';
import 'package:bjit_education/localization/app_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/widgets/custom_image_view.dart';
import '../../../../../common/widgets/custom_outlined_button.dart';
import '../../../../../common/widgets/custom_text_form_field.dart';
import 'bloc/sign_in_page_two_bloc.dart';
import 'models/sign_in_page_two_model.dart';

import '../../../../../core/utils/theme/custom_button_style.dart';
import '../../../../../core/utils/theme/app_decoration.dart';
import '../../../../../core/utils/theme/custom_text_style.dart';
import '../../../../../core/utils/theme/theme_helper.dart';

// ignore_for_file: must_be_immutable
class SignInPageTwoScreen extends StatelessWidget {
  SignInPageTwoScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInPageTwoBloc>(
        create: (context) => SignInPageTwoBloc(
            SignInPageTwoState(signInPageTwoModelObj: const SignInPageTwoModel()))
          ..add(SignInPageTwoInitialEvent()),
        child: SignInPageTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 37.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 34.h),
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          SizedBox(height: 51.v),
                          Padding(
                              padding: EdgeInsets.only(left: 34.h),
                              child: Text("lbl_sign_in2".tr,
                                  style:
                                      CustomTextStyles.displaySmallOnPrimary)),
                          SizedBox(height: 40.v),
                          SizedBox(
                              height: 662.v,
                              width: double.maxFinite,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 67.v,
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary
                                                .withOpacity(1)))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 34.h, vertical: 63.v),
                                        decoration: AppDecoration.fillOnPrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder25),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                      "lbl_welcome_back".tr,
                                                      style: theme.textTheme
                                                          .displaySmall)),
                                              SizedBox(height: 9.v),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                      "msg_hello_there_sign".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeIndigo900_2)),
                                              SizedBox(height: 48.v),
                                              BlocSelector<
                                                      SignInPageTwoBloc,
                                                      SignInPageTwoState,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.userNameController,
                                                  builder: (context,
                                                      userNameController) {
                                                    return CustomTextFormField(
                                                        controller:
                                                            userNameController,
                                                        hintText:
                                                            "msg_username_or_email"
                                                                .tr,
                                                        hintStyle: CustomTextStyles
                                                            .bodyLargeBluegray10002,
                                                        textInputType:
                                                            TextInputType
                                                                .emailAddress,
                                                        validator: (value) {
                                                          if (value == null ||
                                                              (!isValidEmail(
                                                                  value,
                                                                  isRequired:
                                                                      true))) {
                                                            return "err_msg_please_enter_valid_email"
                                                                .tr;
                                                          }
                                                          return null;
                                                        },
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        20.h,
                                                                    vertical:
                                                                        13.v));
                                                  }),
                                              SizedBox(height: 37.v),
                                              BlocSelector<
                                                      SignInPageTwoBloc,
                                                      SignInPageTwoState,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.passwordController,
                                                  builder: (context,
                                                      passwordController) {
                                                    return CustomTextFormField(
                                                        controller:
                                                            passwordController,
                                                        hintText:
                                                            "lbl_password".tr,
                                                        textInputAction:
                                                            TextInputAction
                                                                .done,
                                                        textInputType:
                                                            TextInputType
                                                                .visiblePassword,
                                                        validator: (value) {
                                                          if (value == null ||
                                                              (!isValidPassword(
                                                                  value,
                                                                  isRequired:
                                                                      true))) {
                                                            return "err_msg_please_enter_valid_password"
                                                                .tr;
                                                          }
                                                          return null;
                                                        },
                                                        obscureText: true,
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        20.h,
                                                                    vertical:
                                                                        13.v));
                                                  }),
                                              SizedBox(height: 37.v),
                                              CustomOutlinedButton(
                                                  text: "lbl_sign_in3".tr,
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineIndigo),
                                              SizedBox(height: 39.v),
                                              Text("msg_forgot_password".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumIndigo900),
                                              SizedBox(height: 39.v)
                                            ])))
                              ]))
                        ])))));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
