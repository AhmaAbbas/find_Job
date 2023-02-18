import 'package:flutter/material.dart';
import 'package:jobs/core/customs/custombutton.dart';
import 'package:jobs/core/utls/styels.dart';
import 'package:jobs/features/Career/presentation/views/widget/career_item.dart';
import 'package:sizer/sizer.dart';
import '../view_model/careermodel_data.dart';

class Career_view extends StatelessWidget {
  Career_view({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          // implement GridView.builder
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Text("What type of Work are you\n interested in?",
                style: Styels.titlestyle25sp.copyWith(
                fontSize: 18.sp,
              ),),
              SizedBox(
                height: 1.h,
              ),
              Text("Tell us what you 're interested in so we can customise the app for you needs.",
                style: Styels.titlestyle10sp.copyWith(
                  color: Colors.grey,
                  fontSize: 15.sp
                ),),
              SizedBox(
                height: 4.h,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  controller: ScrollController(keepScrollOffset: false),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3/2.5,
                      crossAxisSpacing: 18,
                      mainAxisSpacing: 20),
                  itemCount: careersdata.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Career_Item(career: careersdata[index],);
                  }),
              Spacer(flex: 10,),
             const CustomButton(color:true, data: "Next"),
              SizedBox(height: 1.h,)
            ],
          ),
        ),
      ),
    );
  }
}
