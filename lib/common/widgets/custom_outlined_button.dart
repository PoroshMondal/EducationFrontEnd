import 'package:bjit_education/core/utils/device/size_utils.dart';
import 'package:flutter/material.dart';
import 'base_button.dart';

import '../../core/utils/theme/custom_text_style.dart';

class CustomOutlinedButton extends BaseButton {
  const CustomOutlinedButton({super.key, 
    //Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    this.label,
    VoidCallback? onPressed,
    ButtonStyle? buttonStyle,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    Alignment? alignment,
    double? height,
    double? width,
    EdgeInsets? margin,
    required String text,
  }) : super(
          text: text,
          onPressed: onPressed,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          buttonTextStyle: buttonTextStyle,
          height: height,
          alignment: alignment,
          width: width,
          margin: margin,
        );

  final BoxDecoration? decoration;

  final Widget? leftIcon;

  final Widget? rightIcon;

  final Widget? label;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildOutlinedButtonWidget,
          )
        : buildOutlinedButtonWidget;
  }

  Widget get buildOutlinedButtonWidget => Container(
        height: height ?? 62.v,
        width: width ?? double.maxFinite,
        margin: margin,
        decoration: decoration,
        child: OutlinedButton(
          style: buttonStyle,
          onPressed: isDisabled ?? false ? null : onPressed ?? () {},
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: leftIcon ?? const SizedBox.shrink(),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style:
                      buttonTextStyle ?? CustomTextStyles.titleMediumOnPrimary,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: rightIcon ?? const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      );
}
