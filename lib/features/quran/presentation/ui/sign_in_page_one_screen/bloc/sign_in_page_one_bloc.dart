import 'package:bjit_education/features/quran/presentation/ui/sign_in_page_one_screen/models/sign_in_page_one_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'sign_in_page_one_event.dart';
part 'sign_in_page_one_state.dart';

/// A bloc that manages the state of a SignInPageOne according to the event that is dispatched to it.
class SignInPageOneBloc extends Bloc<SignInPageOneEvent, SignInPageOneState> {
  SignInPageOneBloc(SignInPageOneState initialState) : super(initialState) {
    on<SignInPageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignInPageOneInitialEvent event,
    Emitter<SignInPageOneState> emit,
  ) async {}
}
