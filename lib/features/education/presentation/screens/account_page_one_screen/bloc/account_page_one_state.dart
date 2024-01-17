// ignore_for_file: must_be_immutable

part of 'account_page_one_bloc.dart';

/// Represents the state of AccountPageOne in the application.
class AccountPageOneState extends Equatable {
  AccountPageOneState({
    this.allowNotifcations = false,
    this.accountPageOneModelObj,
  });

  AccountPageOneModel? accountPageOneModelObj;

  bool allowNotifcations;

  @override
  List<Object?> get props => [
        allowNotifcations,
        accountPageOneModelObj,
      ];
  AccountPageOneState copyWith({
    bool? allowNotifcations,
    AccountPageOneModel? accountPageOneModelObj,
  }) {
    return AccountPageOneState(
      allowNotifcations: allowNotifcations ?? this.allowNotifcations,
      accountPageOneModelObj:
          accountPageOneModelObj ?? this.accountPageOneModelObj,
    );
  }
}
