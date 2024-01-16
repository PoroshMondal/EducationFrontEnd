import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'route_state.dart';

class RouteCubit extends Cubit<RouteState> {
  RouteCubit() : super(const RoutePageInitial(tabIndex: 0));

  void tabChange(int index) => emit(RoutePageInitial(tabIndex: index));
  
}
