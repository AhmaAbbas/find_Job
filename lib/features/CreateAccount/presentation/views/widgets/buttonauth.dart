import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:auth_buttons/auth_buttons.dart';
class Buuton_auth extends StatelessWidget {
  const Buuton_auth({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border:Border.all(
                  color: Colors.grey.shade300,
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GoogleAuthButton(
                  onPressed: (){},
                  style: AuthButtonStyle(
                      buttonType: AuthButtonType.icon,
                      buttonColor: Theme.of(context).scaffoldBackgroundColor,
                      elevation: 0
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(4),
                  child: Text("Google",style: TextStyle(color: Colors.black),),
                )
              ],
            ),
          ),
          const Spacer(flex: 1,),
          Container(
            width: 40.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border:Border.all(
                  color: Colors.grey.shade300,
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FacebookAuthButton(
                  style: AuthButtonStyle(
                    buttonType: AuthButtonType.icon,
                    iconColor: Colors.blue,
                    buttonColor: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 0,
                  ),
                  onPressed: (){},
                ),
                const  Padding(
                  padding: EdgeInsets.all(4),
                  child: Text("Facebook",style: TextStyle(color: Colors.black),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}