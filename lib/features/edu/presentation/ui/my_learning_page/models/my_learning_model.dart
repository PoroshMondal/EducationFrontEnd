// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'mylearning_item_model.dart';

/// This class defines the variables used in the [my_learning_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyLearningModel extends Equatable {
  MyLearningModel({this.mylearningItemList = const []}) {}

  List<MylearningItemModel> mylearningItemList;

  MyLearningModel copyWith({List<MylearningItemModel>? mylearningItemList}) {
    return MyLearningModel(
      mylearningItemList: mylearningItemList ?? this.mylearningItemList,
    );
  }

  @override
  List<Object?> get props => [mylearningItemList];
}
