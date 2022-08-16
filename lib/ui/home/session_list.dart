import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:learning_resources/constant/color_const.dart';

import '../../controller/session_list_controller.dart';
class SesstionListPage extends StatelessWidget {
  final SessionListController _controller = Get.put(SessionListController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Session Page"),
        backgroundColor: ColorSelect.background,
      ),
      body: GetBuilder<SessionListController>(
        init: _controller,
        builder: (value){
          return Column(
            children: [

            ],
          );
        },
      ),
    );
  }
}
