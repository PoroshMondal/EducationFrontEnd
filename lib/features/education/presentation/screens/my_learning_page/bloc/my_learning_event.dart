// ignore_for_file: must_be_immutable

part of 'my_learning_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyLearning widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyLearningEvent extends Equatable {}

/// Event that is dispatched when the MyLearning widget is first created.
class MyLearningInitialEvent extends MyLearningEvent {
  @override
  List<Object?> get props => [];
}
