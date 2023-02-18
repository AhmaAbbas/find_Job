import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../../../core/utls/consts.dart';
class Contents{
  static List<String> images=[
    "assets/images/one.jpeg",
    "assets/images/five.jpeg",
    "assets/images/four.jpeg",
  ];
  static List<String> subtitle=[
    "Explore over 25,924 available job roles and upgrade your operator now.",
    "Immediately join us and start applying for the job you are interested in.",
    "The better the skills you have, the greater the good job opportunities for you.",
  ];
  static List<RichText> title=[
    RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 27.sp, fontWeight: FontWeight.w500,fontFamily:ksfprodisplay ),
        children: <TextSpan>[
          TextSpan(text: 'Find a job, and',),
          TextSpan(text: ' start \n building' ,style: TextStyle(color: Colors.blue)),
          TextSpan(text: ' your career from now on', )
        ],
      ),
      //textScaleFactor: 0.5,
    ),
    RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 27.sp, fontWeight: FontWeight.w500,fontFamily:ksfprodisplay ),
        children: <TextSpan>[
          TextSpan(text: 'Find a job, and',),
          TextSpan(text: ' join \n together' ,style: TextStyle(color: Colors.blue)),
        ],
      ),
      //textScaleFactor: 0.5,
    ),
    RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 27.sp, fontWeight: FontWeight.w500,fontFamily:ksfprodisplay),
        children: <TextSpan>[
          TextSpan(text: 'Get the best',),
          TextSpan(text: ' choice for \n the job' ,style: TextStyle(color: Colors.blue)),
          TextSpan(text: 'you\'ve always dreamed of',)
        ],
      ),
      //textScaleFactor: 0.5,
    ),
  ];
}