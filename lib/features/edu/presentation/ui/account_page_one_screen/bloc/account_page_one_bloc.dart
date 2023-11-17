import 'package:bjit_education/features/edu/presentation/ui/account_page_one_screen/models/account_page_one_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'account_page_one_event.dart';
part 'account_page_one_state.dart';

/// A bloc that manages the state of a AccountPageOne according to the event that is dispatched to it.
class AccountPageOneBloc
    extends Bloc<AccountPageOneEvent, AccountPageOneState> {
  AccountPageOneBloc(AccountPageOneState initialState) : super(initialState) {
    on<AccountPageOneInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AccountPageOneState> emit,
  ) {
    emit(state.copyWith(allowNotifcations: event.value));
  }

  _onInitialize(
    AccountPageOneInitialEvent event,
    Emitter<AccountPageOneState> emit,
  ) async {
    emit(state.copyWith(allowNotifcations: false));
  }
}
