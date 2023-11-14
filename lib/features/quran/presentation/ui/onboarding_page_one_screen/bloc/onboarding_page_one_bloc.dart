import 'package:bjit_education/core/utils/navigator_service.dart';
import 'package:bjit_education/features/quran/presentation/ui/onboarding_page_one_screen/models/onboarding_page_one_model.dart';
import 'package:bjit_education/routes/app_routes.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'onboarding_page_one_event.dart';
part 'onboarding_page_one_state.dart';

/// A bloc that manages the state of a OnboardingPageOne according to the event that is dispatched to it.
class OnboardingPageOneBloc
    extends Bloc<OnboardingPageOneEvent, OnboardingPageOneState> {
  OnboardingPageOneBloc(OnboardingPageOneState initialState)
      : super(initialState) {
    on<OnboardingPageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingPageOneInitialEvent event,
    Emitter<OnboardingPageOneState> emit,
  ) async {
    /*Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        //AppRoutes.dashboardPageOneContainerScreen,
        AppRoutes.signInPageOneScreen
      );
    });*/
  }
}
