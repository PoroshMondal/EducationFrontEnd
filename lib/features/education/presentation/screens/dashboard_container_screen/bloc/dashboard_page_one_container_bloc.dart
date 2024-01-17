import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/dashboard_container_model.dart';
part 'dashboard_page_one_container_event.dart';
part 'dashboard_page_one_container_state.dart';

/// A bloc that manages the state of a DashboardPageOneContainer according to the event that is dispatched to it.
class DashboardPageOneContainerBloc extends Bloc<DashboardPageOneContainerEvent,
    DashboardPageOneContainerState> {
  DashboardPageOneContainerBloc(DashboardPageOneContainerState initialState)
      : super(initialState) {
    on<DashboardPageOneContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DashboardPageOneContainerInitialEvent event,
    Emitter<DashboardPageOneContainerState> emit,
  ) async {}
}
