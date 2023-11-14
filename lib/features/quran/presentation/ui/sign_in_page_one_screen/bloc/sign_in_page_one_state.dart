// ignore_for_file: must_be_immutable

part of 'sign_in_page_one_bloc.dart';

/// Represents the state of SignInPageOne in the application.
class SignInPageOneState extends Equatable {
  SignInPageOneState({this.signInPageOneModelObj});

  SignInPageOneModel? signInPageOneModelObj;

  @override
  List<Object?> get props => [
        signInPageOneModelObj,
      ];
  SignInPageOneState copyWith({SignInPageOneModel? signInPageOneModelObj}) {
    return SignInPageOneState(
      signInPageOneModelObj:
          signInPageOneModelObj ?? this.signInPageOneModelObj,
    );
  }
}
