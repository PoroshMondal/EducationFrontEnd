import 'package:bjit_education/core/utils/Constants/image_constant.dart';
import 'package:bjit_education/features/education/presentation/screens/my_learning_page/models/my_learning_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/mylearning_item_model.dart';
part 'my_learning_event.dart';
part 'my_learning_state.dart';

/// A bloc that manages the state of a MyLearning according to the event that is dispatched to it.
class MyLearningBloc extends Bloc<MyLearningEvent, MyLearningState> {
  MyLearningBloc(MyLearningState initialState) : super(initialState) {
    on<MyLearningInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyLearningInitialEvent event,
    Emitter<MyLearningState> emit,
  ) async {
    emit(state.copyWith(
        myLearningModelObj: state.myLearningModelObj?.copyWith(
      mylearningItemList: fillMylearningItemList(),
    )));
  }

  List<MylearningItemModel> fillMylearningItemList() {
    return [
      MylearningItemModel(
          image: ImageConstant.imgRectangle24,
          minutePython: "60-Minute Python Bootcamp",
          nathanChadler: "Nathan Chadler, Evan Yong",
          complete: "25% complete"),
      MylearningItemModel(
          image: ImageConstant.imgRectangle2486x97,
          minutePython: "How to Learn things easily: An Effective Approach",
          nathanChadler: "Ming Jong, Tifanny Black",
          complete: "10% complete"),
      MylearningItemModel(image: ImageConstant.imgRectangle241),
      MylearningItemModel(image: ImageConstant.imgRectangle242),
      MylearningItemModel(image: ImageConstant.imgRectangle243),
      MylearningItemModel(image: ImageConstant.imgRectangle244)
    ];
  }
}
