// ignore_for_file: must_be_immutable

part of 'my_learning_bloc.dart';

/// Represents the state of MyLearning in the application.
class MyLearningState extends Equatable {
  MyLearningState({this.myLearningModelObj});

  MyLearningModel? myLearningModelObj;

  @override
  List<Object?> get props => [
        myLearningModelObj,
      ];
  MyLearningState copyWith({MyLearningModel? myLearningModelObj}) {
    return MyLearningState(
      myLearningModelObj: myLearningModelObj ?? this.myLearningModelObj,
    );
  }
}
