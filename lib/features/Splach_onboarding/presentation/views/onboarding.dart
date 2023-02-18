import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/custombuttononboarding.dart';
import 'widgets/pageviewbody.dart';
class On_Boarding extends StatefulWidget {
  const On_Boarding({Key? key}) : super(key: key);

  @override
  _On_BoardingState createState() => _On_BoardingState();
}

class _On_BoardingState extends State<On_Boarding> {
  int currentindex=0;
  late PageController controller;
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: controller,
                        itemCount: 3,
                        onPageChanged: (index){
                         setState(() {
                           currentindex=index;
                         });
                        },
                        itemBuilder: (_,index){
                          return pageviewbody(currentindex: currentindex,index:index);
                        }
                    ),
                  ),
                  Onboarding_Button(currentindex:currentindex,controller:controller),
                ],
              ),
            ),
          ),
        )
    );
  }
}


