import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/viewmodel/registerpage.dart';
import 'registerstatess.dart';
class RegisterCubit extends Cubit<RegisterStates>{
  RegisterCubit():super(RegisterInitialState());
  bool custombuttcolor=false;
  late String email , password,username;
  Future<void> addemailandpassword()async{
    try{
      emit(LoadingInitialState());
     await RegisterPage.login(email, password);
      emit(SuccessfulInitialState());
    }catch(e)
    {
      FauilerInitialState(error:e.toString());
    }
  }


}