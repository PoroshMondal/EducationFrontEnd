// ignore_for_file: must_be_immutable

part of 'dashboard_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DashboardPageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DashboardPageOneEvent extends Equatable {}

/// Event that is dispatched when the DashboardPageOne widget is first created.
class DashboardPageOneInitialEvent extends DashboardPageOneEvent {
  @override
  List<Object?> get props => [];
}
