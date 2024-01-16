import 'package:flutter/material.dart';
import 'package:bjit_education/core/utils/size_utils.dart';
import 'package:bjit_education/features/edu/presentation/ui/account_page_two_page/account_page_two_page.dart';
import 'package:bjit_education/features/edu/presentation/ui/dashboard_page/dashboard_page.dart';
import 'package:bjit_education/features/edu/presentation/ui/my_learning_page/my_learning_page.dart';
import 'package:bjit_education/features/edu/presentation/ui/wishlist_page/wishlist_page.dart';
import 'package:bjit_education/app_routes/app_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/widgets/custom_bottom_bar.dart';
import 'bloc/dashboard_page_one_container_bloc.dart';
import 'models/dashboard_container_model.dart';


// ignore_for_file: must_be_immutable
class DashboardPageOneContainerScreen extends StatelessWidget {
  DashboardPageOneContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardPageOneContainerBloc>(
        create: (context) => DashboardPageOneContainerBloc(
            DashboardPageOneContainerState(
                dashboardPageOneContainerModelObj:
                    DashboardPageOneContainerModel()))
          ..add(DashboardPageOneContainerInitialEvent()),
        child: DashboardPageOneContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<DashboardPageOneContainerBloc,
        DashboardPageOneContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.dashboardPageOnePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
       // return WishlistPage.builder(context);
      case AppRoutes.accountPageTwoPage:
        return AccountPageTwoPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
