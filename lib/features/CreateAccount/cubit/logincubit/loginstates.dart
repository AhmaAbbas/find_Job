class LoginStates{}
class Login_InitialStates extends LoginStates{}
class Checkboxstate extends LoginStates{}
class Login_LoadingStates extends LoginStates{}
class Login_SuccessStates extends LoginStates{}
class Login_FailureStates extends LoginStates{
  Login_FailureStates({required this.error});
  String error;
}
