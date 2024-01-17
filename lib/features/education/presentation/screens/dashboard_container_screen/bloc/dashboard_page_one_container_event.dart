// ignore_for_file: must_be_immutable

part of 'dashboard_page_one_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DashboardPageOneContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DashboardPageOneContainerEvent extends Equatable {}

/// Event that is dispatched when the DashboardPageOneContainer widget is first created.
class DashboardPageOneContainerInitialEvent
    extends DashboardPageOneContainerEvent {
  @override
  List<Object?> get props => [];
}
