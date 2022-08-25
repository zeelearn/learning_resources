import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:learning_resources/constant/color_const.dart';
import 'package:learning_resources/ui/home/list_item.dart';

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
                  color: ColorSelect.background,
                semanticContainer: true,
                shadowColor:ColorSelect.button,
                  elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
                  child:const Center(
                    child:  Text("Reports",
                      style: TextStyle(color: Colors.white,fontSize: 16.0),),
                  ),
                ),
              ),
                InkWell(
                  onTap: (){
                    Get.to(()=>
                      const StudentListPage()
                    );
                  },
                  child: Card(
                    color: ColorSelect.background,
                    semanticContainer: true,
                    shadowColor:ColorSelect.button,
                      elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child:const Center(
                      child:  Text("Daily Observation",
                        style: TextStyle(color: Colors.white,fontSize: 16.0),),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(()=>{

                    });
                  },
                  child: Card(
                    color: ColorSelect.background,
                    semanticContainer: true,
                    elevation: 4,
                    shadowColor:ColorSelect.button,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child:const Center(
                      child:  Text("Log Book",
                        style: TextStyle(color: Colors.white,fontSize: 16.0),),
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
                    shadowColor:ColorSelect.button,
                    elevation: 4,
                    color: ColorSelect.background,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child:const Center(
                      child:  Text("Message Center ",
                        style: TextStyle(color: Colors.white,fontSize: 16.0),),
                    ),
                  ),
                ),
              ]
            )
        ),

    );

  }
}
