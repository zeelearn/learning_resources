import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'daily_observation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              children: [
              InkWell(
                onTap: (){
                  Get.to(()=>{

                  });
                },
                child: Card(
                  color: const Color(0xff2e3191),
                semanticContainer: true,
                shadowColor:const Color(0xffea1a27),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
                  child:const Center(
                    child:  Text("Reports",
                      style: TextStyle(color: Colors.white,fontSize: 18.0),),
                  ),
                ),
              ),
                InkWell(
                  onTap: (){
                    Get.to(()=>
                      DailyObservation()
                    );
                  },
                  child: Card(
                    color: const Color(0xff2e3191),
                    semanticContainer: true,
                    shadowColor:const Color(0xffea1a27),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child:const Center(
                      child:  Text("Daily Observation",
                        style: TextStyle(color: Colors.white,fontSize: 18.0),),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(()=>{

                    });
                  },
                  child: Card(
                    color: const Color(0xff2e3191),
                    semanticContainer: true,
                    shadowColor:const Color(0xffea1a27),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child:const Center(
                      child:  Text("Log Book",
                        style: TextStyle(color: Colors.white,fontSize: 18.0),),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(()=>{

                    });
                  },
                  child: Card(
                    semanticContainer: true,
                    shadowColor:const Color(0xffea1a27),
                    color: const Color(0xff2e3191),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child:const Center(
                      child:  Text("Message Center ",
                        style: TextStyle(color: Colors.white,fontSize: 18.0),),
                    ),
                  ),
                ),
              ]
            )
        )
    );
    /*  GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: 4,
              // itemBuilder: (BuildContext ctx, index) {
              //   return Container(
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //         color: const Color(0xffea1a27),
              //         borderRadius: BorderRadius.circular(15)),
              //     child:const Center(child: Text("Reports")),
              //   );
              //
              // }),

              itemBuilder: (BuildContext context, index) {
                return Column(
                  children: [
                   Card(
                     semanticContainer: true,
                     shadowColor:const Color(0xffea1a27),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10.0),
                     ),
                   )
                  ],
                );
              },
            )));*/
  }
}
