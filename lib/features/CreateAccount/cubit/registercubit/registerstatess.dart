class RegisterStates{}
class RegisterInitialState extends RegisterStates{}
class LoadingInitialState extends RegisterStates{}
class SuccessfulInitialState extends RegisterStates{}
class FauilerInitialState extends RegisterStates{
  FauilerInitialState({this.error});
  String? error;
}


