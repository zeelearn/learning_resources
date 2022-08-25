import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_resources/ui/home/daily_observation.dart';
import 'package:learning_resources/ui/home/session_list.dart';

import '../../constant/color_const.dart';

class StudentListPage extends StatefulWidget {
  const StudentListPage({Key? key}) : super(key: key);

  @override
  State<StudentListPage> createState() => _StudentListPageListState();
}

class _StudentListPageListState extends State<StudentListPage> {
  Widget appBarTitle = const Text("Student List");

  Icon actionIcon = const Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title:appBarTitle,
          backgroundColor: ColorSelect.background,
          actions: <Widget>[
             IconButton(icon: actionIcon,onPressed:(){
               setState(() {
                 if ( actionIcon.icon == Icons.search){
                   actionIcon = const Icon(Icons.close);
                   appBarTitle = const TextField(
                     style:  TextStyle(
                       color: Colors.white,

                     ),
                     decoration:  InputDecoration(
                         prefixIcon:  Icon(Icons.search,color: Colors.white),
                         hintText: "Search...",
                         hintStyle:  TextStyle(color: Colors.white)
                     ),
                   );}
                 else {
                   actionIcon = const Icon(Icons.search);
                   appBarTitle =const  Text("Student List");
                 }
               });

            } ,),]
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shadowColor: ColorSelect.button,
            semanticContainer: true,
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child:InkWell(
              onTap: (){
                Get.to(()=>SesstionListPage());
              },
              child: const ListTile(
                contentPadding: EdgeInsets.all(5.0),
                title: Text("Student"),
                leading: CircleAvatar(
                  child: FlutterLogo(),
                ),
                subtitle: Text("Nursery-batch A"),
                trailing: Text("C1 - W1 - D1"),
              ),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
         isExtended: true,
        backgroundColor: ColorSelect.button,
        onPressed: () {
           Get.to(()=>DailyObservation());
          // setState(() {
          //   i++;
          // });
        },
        icon: Icon(Icons.file_copy),
        // isExtended: true,
        label:const Text("Daily Observation"),
      ),
    );
  }
}
