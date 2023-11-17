// ignore_for_file: must_be_immutable

part of 'dashboard_page_one_bloc.dart';

/// Represents the state of DashboardPageOne in the application.
class DashboardPageOneState extends Equatable {
  DashboardPageOneState({
    this.sliderIndex = 0,
    this.dashboardPageOneModelObj,
  });

  DashboardPageOneModel? dashboardPageOneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        dashboardPageOneModelObj,
      ];
  DashboardPageOneState copyWith({
    int? sliderIndex,
    DashboardPageOneModel? dashboardPageOneModelObj,
  }) {
    return DashboardPageOneState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      dashboardPageOneModelObj:
          dashboardPageOneModelObj ?? this.dashboardPageOneModelObj,
    );
  }
}
