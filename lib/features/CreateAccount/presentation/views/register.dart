import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobs/core/utls/styels.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/customs/custombutton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../core/utls/routers.dart';
import '../../cubit/registercubit/registercubit.dart';
import '../../cubit/registercubit/registerstatess.dart';
import 'widgets/buttonauth.dart';
import 'package:go_router/go_router.dart';

import 'widgets/registrfeilds.dart';
class Register extends StatefulWidget {
   Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // bool colorcustombouuton=false;
   final  GlobalKey<FormState> formkey=GlobalKey();
   bool load=false;
  @override
  Widget build(BuildContext context) {
    var registerbloc=BlocProvider.of<RegisterCubit>(context);
    return BlocConsumer<RegisterCubit, RegisterStates>(
  listener: (context, state) {
    if(state is LoadingInitialState)
    {
      load=true;
    }
    else if(state is SuccessfulInitialState)
    {
      load=false;
      const SnackBar(content: Text("registered Successfully"),);
    }
    else if(state is FauilerInitialState)
    {
      SnackBar(content: (Text(state.toString())),);
    }
  },
  builder: (context, state) {
    return ModalProgressHUD(
      inAsyncCall: load,
      child: Scaffold(
        appBar: AppBar(title: Text("Create Account"),),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create Account",style: Styels.titlestyle25sp,),
                SizedBox(height: 1.h,),
                Text("Please create an acount to find your dream job",
                  style: Styels.titlestyle10sp),
                SizedBox(height: 4.h,),
                const Register_Feilds(),
                SizedBox(height: 4.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: TextStyle(fontSize: 12.sp,color: Colors.grey),),
                    TextButton(
                      onPressed: (){
                        GoRouter.of(context).push(AppRouters.klogin);
                      }, child: Text("Log in",
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.blueAccent
                      ),), )
                  ],
                ),
                SizedBox(height: 1.h,),
                CustomButton(
                  data: "Create account",
                    color: registerbloc.custombuttcolor,
                    onTap: ()async{
                      if(formkey.currentState!.validate())
                      {
                        registerbloc.custombuttcolor=true;
                        await registerbloc.addemailandpassword();
                        GoRouter.of(context).push(AppRouters.kchoosecareer);
                      }
                    }
                ),
                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(height: 0.1.h,width:17.w,color: Colors.grey,),
                    Text("or Sign up With Account",style: TextStyle(color: Colors.grey,fontSize: 15.sp),),
                    Container(height: 0.1.h,width:17.w,color: Colors.grey,)
                  ],
                ),
                SizedBox(height: 1.h,),
                const Buuton_auth()
              ],
            )
            ),
          ),
        ),
      ),
    );
  },
);
  }
}


