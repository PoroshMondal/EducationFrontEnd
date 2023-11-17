// ignore_for_file: must_be_immutable

part of 'account_page_two_bloc.dart';

/// Represents the state of AccountPageTwo in the application.
class AccountPageTwoState extends Equatable {
  AccountPageTwoState({
    this.allowNotifcations = false,
    this.accountPageTwoModelObj,
  });

  AccountPageTwoModel? accountPageTwoModelObj;

  bool allowNotifcations;

  @override
  List<Object?> get props => [
        allowNotifcations,
        accountPageTwoModelObj,
      ];
  AccountPageTwoState copyWith({
    bool? allowNotifcations,
    AccountPageTwoModel? accountPageTwoModelObj,
  }) {
    return AccountPageTwoState(
      allowNotifcations: allowNotifcations ?? this.allowNotifcations,
      accountPageTwoModelObj:
          accountPageTwoModelObj ?? this.accountPageTwoModelObj,
    );
  }
}
