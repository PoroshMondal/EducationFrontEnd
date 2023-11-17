// ignore_for_file: must_be_immutable

part of 'account_page_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AccountPageTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AccountPageTwoEvent extends Equatable {}

/// Event that is dispatched when the AccountPageTwo widget is first created.
class AccountPageTwoInitialEvent extends AccountPageTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AccountPageTwoEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
