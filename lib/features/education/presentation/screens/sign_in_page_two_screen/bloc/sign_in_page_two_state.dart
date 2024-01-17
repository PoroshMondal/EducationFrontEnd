// ignore_for_file: must_be_immutable

part of 'sign_in_page_two_bloc.dart';

/// Represents the state of SignInPageTwo in the application.
class SignInPageTwoState extends Equatable {
  SignInPageTwoState({
    this.userNameController,
    this.passwordController,
    this.signInPageTwoModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  SignInPageTwoModel? signInPageTwoModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        signInPageTwoModelObj,
      ];
  SignInPageTwoState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    SignInPageTwoModel? signInPageTwoModelObj,
  }) {
    return SignInPageTwoState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      signInPageTwoModelObj:
          signInPageTwoModelObj ?? this.signInPageTwoModelObj,
    );
  }
}
