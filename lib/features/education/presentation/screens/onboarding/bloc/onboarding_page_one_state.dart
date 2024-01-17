// ignore_for_file: must_be_immutable

part of 'onboarding_page_one_bloc.dart';

/// Represents the state of OnboardingPageOne in the application.
class OnboardingPageOneState extends Equatable {
  OnboardingPageOneState({this.onboardingPageOneModelObj});

  OnboardingPageOneModel? onboardingPageOneModelObj;

  @override
  List<Object?> get props => [
        onboardingPageOneModelObj,
      ];
  OnboardingPageOneState copyWith(
      {OnboardingPageOneModel? onboardingPageOneModelObj}) {
    return OnboardingPageOneState(
      onboardingPageOneModelObj:
          onboardingPageOneModelObj ?? this.onboardingPageOneModelObj,
    );
  }
}
