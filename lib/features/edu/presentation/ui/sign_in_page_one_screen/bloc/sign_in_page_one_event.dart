// ignore_for_file: must_be_immutable

part of 'sign_in_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignInPageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignInPageOneEvent extends Equatable {}

/// Event that is dispatched when the SignInPageOne widget is first created.
class SignInPageOneInitialEvent extends SignInPageOneEvent {
  @override
  List<Object?> get props => [];
}
