import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utls/styels.dart';
import '../../../cubit/logincubit/logincubut.dart';
import '../../../cubit/logincubit/loginstates.dart';

class Remember_Forget extends StatelessWidget {
  const Remember_Forget({
  super.key,
  required this.loginbloc,
  });

  final Login_Cubit loginbloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          BlocConsumer<Login_Cubit,LoginStates>(
            listener: (context,state){
              if(state is Checkboxstate)
              {
                loginbloc.checkbox=!loginbloc.checkbox;
              }
            },
            builder:(context,state){
              return Row(
                children: [
                  Checkbox(
                      value:loginbloc.checkbox,
                      onChanged: (value) {
                        loginbloc.setcheckbox();
                        //print(loginbloc.checkbox);
                      }),
                  Text("Remember me"),
                ],
              );
            },
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            "Forget Password?",
            style: Styels.titlestyle10sp.copyWith(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}