// ignore_for_file: must_be_immutable

part of 'sign_in_page_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignInPageTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignInPageTwoEvent extends Equatable {}

/// Event that is dispatched when the SignInPageTwo widget is first created.
class SignInPageTwoInitialEvent extends SignInPageTwoEvent {
  @override
  List<Object?> get props => [];
}
