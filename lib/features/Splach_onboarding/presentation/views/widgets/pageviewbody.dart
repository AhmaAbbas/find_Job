import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utls/routers.dart';
import '../../../data/contents.dart';
import 'buildDot.dart';
import 'package:sizer/sizer.dart';
class pageviewbody extends StatelessWidget {
  const pageviewbody({
  super.key,
  required this.currentindex,
  required this.index,
  });
  final int index;
  final int currentindex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(children: [
          Spacer(flex: 1,),
          TextButton.icon(
              label: Text('Skip',style: TextStyle(color: Colors.white),),
              icon: Icon(Icons.skip_next_rounded,color: Colors.white,),
              onPressed: () {
                GoRouter.of(context).push(AppRouters.Kregister);
              },
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey[300]
            ),
          )
        ],),
        Image.asset(Contents.images[index],height: 40.h,),
        SizedBox(height: 2.h,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Contents.title[index],
          ),
        ),
        SizedBox(height: 2.h,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(Contents.subtitle[index],style: TextStyle(
              fontSize: 14,
              color: Colors.grey
          ),),
        ),
        Expanded(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                Contents.title.length,
                    (index) => buildDot(index, context,currentindex),

              ),
            ),
          ),
        ),
      ],);
  }
}