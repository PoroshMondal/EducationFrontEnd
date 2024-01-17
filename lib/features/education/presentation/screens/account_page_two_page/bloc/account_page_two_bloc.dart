import 'package:bjit_education/features/education/presentation/screens/account_page_two_page/models/account_page_two_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'account_page_two_event.dart';
part 'account_page_two_state.dart';

/// A bloc that manages the state of a AccountPageTwo according to the event that is dispatched to it.
class AccountPageTwoBloc
    extends Bloc<AccountPageTwoEvent, AccountPageTwoState> {
  AccountPageTwoBloc(AccountPageTwoState initialState) : super(initialState) {
    on<AccountPageTwoInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AccountPageTwoState> emit,
  ) {
    emit(state.copyWith(
      allowNotifcations: event.value,
    ));
  }

  _onInitialize(
    AccountPageTwoInitialEvent event,
    Emitter<AccountPageTwoState> emit,
  ) async {
    emit(state.copyWith(
      allowNotifcations: false,
    ));
  }
}
