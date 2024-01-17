// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'skillsit_item_model.dart';
import 'dashboardpageone_item_model.dart';

/// This class defines the variables used in the [dashboard_page_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardPageOneModel extends Equatable {
  DashboardPageOneModel({
    this.skillsitItemList = const [],
    this.dashboardpageoneItemList = const [],
  }) {}

  List<SkillsitItemModel> skillsitItemList;

  List<DashboardpageoneItemModel> dashboardpageoneItemList;

  DashboardPageOneModel copyWith({
    List<SkillsitItemModel>? skillsitItemList,
    List<DashboardpageoneItemModel>? dashboardpageoneItemList,
  }) {
    return DashboardPageOneModel(
      skillsitItemList: skillsitItemList ?? this.skillsitItemList,
      dashboardpageoneItemList:
          dashboardpageoneItemList ?? this.dashboardpageoneItemList,
    );
  }

  @override
  List<Object?> get props => [skillsitItemList, dashboardpageoneItemList];
}
