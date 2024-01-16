import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../features/edu/presentation/ui/dashboard_page/dashboard_page.dart';
import '../../../core/utils/constants/string_constants.dart';
import '../../business_logic/route_cubit.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.dashboard),
    label: StringConstants.dashboard,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.newspaper),
    label: StringConstants.myLearning,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.book_sharp),
    label: StringConstants.wishlist,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.account_box),
    label: StringConstants.account,
  ),
  /*BottomNavigationBarItem(
    icon: Icon(Icons.shopping_bag_outlined),
    label: 'Cart',
  ),*/
];

const List<Widget> bottomNavScreen = <Widget>[
  DashboardPageOnePage(),
  Text("My Learning"),
  Text("WishList"),
  Text("Account"),
];

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RouteCubit, RouteState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItems,
            currentIndex: state.tabIndex,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              BlocProvider.of<RouteCubit>(context).tabChange(index);
            },
          ),
        );
      },
    );
  }

}
