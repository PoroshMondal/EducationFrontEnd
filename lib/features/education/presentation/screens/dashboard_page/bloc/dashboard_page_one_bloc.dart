import 'package:bjit_education/core/utils/Constants/image_constant.dart';
import 'package:bjit_education/features/education/presentation/screens/dashboard_page/models/dashboard_page_one_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/skillsit_item_model.dart';
import '../models/dashboardpageone_item_model.dart';
part 'dashboard_page_one_event.dart';
part 'dashboard_page_one_state.dart';

/// A bloc that manages the state of a DashboardPageOne according to the event that is dispatched to it.
class DashboardPageOneBloc
    extends Bloc<DashboardPageOneEvent, DashboardPageOneState> {
  DashboardPageOneBloc(DashboardPageOneState initialState)
      : super(initialState) {
    on<DashboardPageOneInitialEvent>(_onInitialize);
  }

  List<SkillsitItemModel> fillSkillsitItemList() {
    return [
      SkillsitItemModel(
          image: ImageConstant.img32215961,
          languageLearning: "Language Learning"),
      SkillsitItemModel(image: ImageConstant.img26226821)
    ];
  }

  List<DashboardpageoneItemModel> fillDashboardpageoneItemList() {
    return [
      DashboardpageoneItemModel(coursePhoto: ImageConstant.imgCoursePhoto),
      DashboardpageoneItemModel(
          coursePhoto: ImageConstant.imgCoursePhoto154x173)
    ];
  }

  _onInitialize(
    DashboardPageOneInitialEvent event,
    Emitter<DashboardPageOneState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        dashboardPageOneModelObj: state.dashboardPageOneModelObj?.copyWith(
      skillsitItemList: fillSkillsitItemList(),
      dashboardpageoneItemList: fillDashboardpageoneItemList(),
    )));
  }
}
