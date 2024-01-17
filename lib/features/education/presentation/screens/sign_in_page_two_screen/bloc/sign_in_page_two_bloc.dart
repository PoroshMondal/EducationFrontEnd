import 'package:bjit_education/features/education/presentation/screens/sign_in_page_two_screen/models/sign_in_page_two_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_in_page_two_event.dart';
part 'sign_in_page_two_state.dart';

/// A bloc that manages the state of a SignInPageTwo according to the event that is dispatched to it.
class SignInPageTwoBloc extends Bloc<SignInPageTwoEvent, SignInPageTwoState> {
  SignInPageTwoBloc(SignInPageTwoState initialState) : super(initialState) {
    on<SignInPageTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignInPageTwoInitialEvent event,
    Emitter<SignInPageTwoState> emit,
  ) async {
    emit(state.copyWith(
        userNameController: TextEditingController(),
        passwordController: TextEditingController()));
  }
}
