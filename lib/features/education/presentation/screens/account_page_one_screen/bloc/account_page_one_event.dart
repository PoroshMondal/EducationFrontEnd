// ignore_for_file: must_be_immutable

part of 'account_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AccountPageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AccountPageOneEvent extends Equatable {}

/// Event that is dispatched when the AccountPageOne widget is first created.
class AccountPageOneInitialEvent extends AccountPageOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AccountPageOneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
