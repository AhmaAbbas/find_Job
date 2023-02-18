import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,required this.color,this.onTap,required this.data}) : super(key: key);
  final bool color;
  final void Function()? onTap ;
  final String data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 6.h,
        width: 90.w,
        decoration: BoxDecoration(
          color: color==true?Colors.blue:Colors.grey[300],
          borderRadius: BorderRadius.circular(35),
        ),
        child: Center(child: Text(data,style: TextStyle(fontSize: 20,
            color: color==true?Colors.white:Colors.black45),)),
      ),
    );
  }
}
