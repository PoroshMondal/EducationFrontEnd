// ignore_for_file: must_be_immutable

part of 'dashboard_page_one_container_bloc.dart';

/// Represents the state of DashboardPageOneContainer in the application.
class DashboardPageOneContainerState extends Equatable {
  DashboardPageOneContainerState({this.dashboardPageOneContainerModelObj});

  DashboardPageOneContainerModel? dashboardPageOneContainerModelObj;

  @override
  List<Object?> get props => [
        dashboardPageOneContainerModelObj,
      ];
  DashboardPageOneContainerState copyWith(
      {DashboardPageOneContainerModel? dashboardPageOneContainerModelObj}) {
    return DashboardPageOneContainerState(
      dashboardPageOneContainerModelObj: dashboardPageOneContainerModelObj ??
          this.dashboardPageOneContainerModelObj,
    );
  }
}
