import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/viewmodel/loginpage.dart';
import 'loginstates.dart';

class Login_Cubit extends Cubit<LoginStates>{
  Login_Cubit():super(Login_InitialStates());
  bool loadedmodalprogresshud=false;
  bool colorcustombuttonlogin=false;
  late String email,password;
  bool checkbox=false;
  setcheckbox(){
    emit(Checkboxstate());
  }
  Future<void> login()async{
    try{
      emit(Login_LoadingStates());
      await LoginPage.loginwithemailandpassword(email: email, password: password);
      emit(Login_SuccessStates());
    }catch(e)
    {
      emit(Login_FailureStates(error: e.toString()));
    }
  }
}