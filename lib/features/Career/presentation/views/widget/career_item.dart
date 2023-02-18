import 'package:flutter/material.dart';
import 'package:jobs/features/Career/data/careermodel.dart';
import 'package:sizer/sizer.dart';

class Career_Item extends StatefulWidget {
 Career_Item({Key? key, required this.career}) : super(key: key);
   Career career;

  @override
  State<Career_Item> createState() => _Career_ItemState();
}

class _Career_ItemState extends State<Career_Item> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left: 14),
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(22),
        border:Border.all(
          color: Colors.grey
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black38,
            radius: 30,
            child: CircleAvatar(
              foregroundColor: Colors.white,
              radius: 29,
              backgroundColor: Colors.white,
              child: Image.asset(
                widget.career.image??"",
                height: 30,
                width: 30,
                //fit:BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 2.h,),
          Text(widget.career.title??"",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w800,color: Colors.black54),),
        ],
      ),
    );
  }
}
