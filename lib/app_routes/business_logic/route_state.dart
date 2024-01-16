part of 'route_cubit.dart';

@immutable
abstract class RouteState {
  final int tabIndex;
  const RouteState({required this.tabIndex});
}

class RoutePageInitial extends RouteState {
  const RoutePageInitial({required super.tabIndex});
}
