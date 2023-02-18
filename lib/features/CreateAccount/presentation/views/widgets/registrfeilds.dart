import 'package:flutter/material.dart';

import '../../../../../core/customs/textformfeild.dart';
import '../../../cubit/registercubit/registercubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Register_Feilds extends StatelessWidget {
  const Register_Feilds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var registerbloc=BlocProvider.of<RegisterCubit>(context);
    return Column(
      children: [
        Custom_Textformfeild(
          onchaged: (value)
          {
            registerbloc.username=value;
          },
          hintText: "Username",
          prefixicon: Icons.person,
          validator: (value){
            if(value!.isEmpty)
            {
              return "This Feild must not be empty";
            }
            return null;
          },
        ),
        Custom_Textformfeild(
          onchaged: (value)
          {
            registerbloc.email=value;
          },
          hintText: "email",
          prefixicon: Icons.email_outlined,
          validator: (value){
            if(value!.isEmpty)
            {
              return "This Feild must not be empty";
            }
            return null;
          },
        ),
        Custom_Textformfeild(
          onchaged: (value)
          {
            registerbloc.password=value;
          },
          hintText: "password",
          prefixicon: Icons.lock_open_outlined,
          suffixIcon: Icons.visibility_off_outlined,
          validator: (value){
            if(value!.isEmpty)
            {
              return "password must be at least 8 characters";
            }
            return null;
          },
        ),
      ],
    );
  }
}
