// ignore_for_file: must_be_immutable

part of 'onboarding_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingPageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingPageOneEvent extends Equatable {}

/// Event that is dispatched when the OnboardingPageOne widget is first created.
class OnboardingPageOneInitialEvent extends OnboardingPageOneEvent {
  @override
  List<Object?> get props => [];
}
