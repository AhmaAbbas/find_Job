import 'package:flutter/material.dart';
import '../../../../../core/utls/routers.dart';
import '../../../data/contents.dart';
import 'package:go_router/go_router.dart';
class Onboarding_Button extends StatelessWidget {
   Onboarding_Button({Key? key,required this.currentindex,required this.controller}) : super(key: key);

  int currentindex;
  PageController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(40),
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: (){
          if(currentindex==Contents.title.length-1)
          {
            GoRouter.of(context).push(AppRouters.Kregister);
          }
          controller?.nextPage(
            duration: Duration(milliseconds: 100),
            curve: Curves.bounceIn,
          );
        },
        child: Text(currentindex==Contents.title.length-1?"Get Started":"Next",
          style: const TextStyle( fontSize: 24,color: Colors.black),),
      ),
    );
  }
}
