import 'package:bjit_education/features/edu/presentation/ui/onboarding/onboarding_page_one_screen.dart';
import 'package:bjit_education/features/edu/presentation/ui/sign_in_page_one_screen/sign_in_page_one_screen.dart';
import 'package:bjit_education/features/edu/presentation/ui/sign_in_page_two_screen/sign_in_page_two_screen.dart';
import 'package:flutter/material.dart';

import '../features/edu/presentation/ui/dashboard_container_screen/dashboard_container_screen.dart';

/*
* Comment Date: 05/01/2024
* This class may need to modify
* as new classes are added for page routing
*/

class AppRoutes {
  static const String onboardingPageOneScreen = '/onboarding_page_one_screen';

  static const String onboardingPageTwoScreen = '/onboarding_page_two_screen';

  static const String onboardingPageThreeScreen =
      '/onboarding_page_three_screen';

  static const String signInPageOneScreen = '/sign_in_page_one_screen';

  static const String signInPageTwoScreen = '/sign_in_page_two_screen';

  static const String signInPageThreeScreen = '/sign_in_page_three_screen';

  static const String signUpPageOneScreen = '/sign_up_page_one_screen';

  static const String signUpPageTwoScreen = '/sign_up_page_two_screen';

  static const String dashboardPageOnePage = '/dashboard_page_one_page';

  static const String dashboardPageOneContainerScreen =
      '/dashboard_page_one_container_screen';

  static const String dashboardPageTwoScreen = '/dashboard_page_two_screen';

  static const String myLearningPage = '/my_learning_page';

  static const String wishlistPage = '/wishlist_page';

  static const String accountPageOneScreen = '/account_page_one_screen';

  static const String accountPageTwoPage = '/account_page_two_page';

  static const String profileInfoScreen = '/profile_info_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String stackedCardScreen = '/stacked_card_screen';

  static const String courseListScreen = '/course_list_screen';

  static const String courseDetailsPageOnePage =
      '/course_details_page_one_page';

  static const String courseDetailsPageOneTabContainerScreen =
      '/course_details_page_one_tab_container_screen';

  static const String courseDetailsPageTwoScreen =
      '/course_details_page_two_screen';

  static const String courseDetailsPageThreeScreen =
      '/course_details_page_three_screen';

  static const String courseDetailsPageFourScreen =
      '/course_details_page_four_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get  routes => {
    //onboardingPageOneScreen: OnboardingPageOneScreen.builder,
    signInPageOneScreen: SignInPageOneScreen.builder,
    signInPageTwoScreen: SignInPageTwoScreen.builder,
    //onboardingScreen: OnboardingPageOneScreen.builder,
    dashboardPageOneContainerScreen: DashboardPageOneContainerScreen.builder,
    /*onboardingPageTwoScreen: OnboardingPageTwoScreen.builder,
    onboardingPageThreeScreen: OnboardingPageThreeScreen.builder,
    signInPageOneScreen: SignInPageOneScreen.builder,

    signInPageThreeScreen: SignInPageThreeScreen.builder,
    signUpPageOneScreen: SignUpPageOneScreen.builder,
    signUpPageTwoScreen: SignUpPageTwoScreen.builder,
    dashboardPageOneContainerScreen:
    DashboardPageOneContainerScreen.builder,
    dashboardPageTwoScreen: DashboardPageTwoScreen.builder,
    accountPageOneScreen: AccountPageOneScreen.builder,
    profileInfoScreen: ProfileInfoScreen.builder,
    changePasswordScreen: ChangePasswordScreen.builder,
    stackedCardScreen: StackedCardScreen.builder,
    courseListScreen: CourseListScreen.builder,
    courseDetailsPageOneTabContainerScreen:
    CourseDetailsPageOneTabContainerScreen.builder,
    courseDetailsPageTwoScreen: CourseDetailsPageTwoScreen.builder,
    courseDetailsPageThreeScreen: CourseDetailsPageThreeScreen.builder,
    courseDetailsPageFourScreen: CourseDetailsPageFourScreen.builder,
    appNavigationScreen: AppNavigationScreen.builder,*/
    //initialRoute: OnboardingPageOneScreen.builder
    //initialRoute: OnboardingPageOneScreen.builder
  };
}
