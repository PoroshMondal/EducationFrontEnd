import 'package:bjit_education/core/utils/Constants/image_constant.dart';
import 'package:bjit_education/core/utils/device/size_utils.dart';
import 'package:bjit_education/localization/app_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/theme/app_decoration.dart';
import '../../core/utils/theme/custom_text_style.dart';
import '../../core/utils/theme/theme_helper.dart';
import 'custom_image_view.dart';


class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavDashboard,
      activeIcon: ImageConstant.imgNavDashboard,
      title: "lbl_dashboard".tr,
      type: BottomBarEnum.Dashboard,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMyLearning,
      activeIcon: ImageConstant.imgNavMyLearning,
      title: "lbl_my_learning".tr,
      type: BottomBarEnum.Mylearning,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavWishlist,
      activeIcon: ImageConstant.imgNavWishlist,
      title: "lbl_wishlist".tr,
      type: BottomBarEnum.Wishlist,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavAccount,
      activeIcon: ImageConstant.imgNavAccount,
      title: "lbl_account".tr,
      type: BottomBarEnum.Account,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.v,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Container(
              decoration: AppDecoration.fillOnPrimary,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 27.v,
                    width: 37.h,
                    color: appTheme.gray400,
                    margin: EdgeInsets.only(top: 13.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 13.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.bodySmallGray60001.copyWith(
                        color: appTheme.gray60001,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: Container(
              decoration: AppDecoration.fillOnPrimary,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 12.v),
                    decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: CustomImageView(
                      imagePath: bottomMenuList[index].activeIcon,
                      height: 24.v,
                      width: 37.h,
                      margin: EdgeInsets.symmetric(
                        horizontal: 13.h,
                        vertical: 4.v,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.v,
                      bottom: 14.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.labelLargeIndigo900.copyWith(
                        color: appTheme.indigo900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Dashboard,
  Mylearning,
  Wishlist,
  Account,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
