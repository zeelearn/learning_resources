import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:learning_resources/constant/color_const.dart';

import '../../controller/session_list_controller.dart';
import 'list_item.dart';

class SesstionListPage extends StatelessWidget {
  final SessionListController _controller = Get.put(SessionListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Session Page"),
        backgroundColor: ColorSelect.background,
        actions: <Widget>[
          MaterialButton(
            textColor: Colors.white,
            onPressed: () {
              Get.to(()=>StudentListPage());
            },
            shape: const CircleBorder(side: BorderSide(color: Colors.transparent)),
            child: const Text("Select Student"),
          ),
        ],
      ),
      body: GetBuilder<SessionListController>(
        init: _controller,
        builder: (value) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text(
                      "Lines Goals",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                    child: Text(
                      "N",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                    child: Text(
                      "E",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                    child: Text(
                      "P",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(height: 10.0,),
              Card(
                semanticContainer: true,
                shadowColor: ColorSelect.button,
                // color: ColorSelect.background,
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 8,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Make snips using scissors.",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Radio(
                        value: value,
                        groupValue: value,
                        onChanged: (value1) {
                          value1 = value.toString();
                          _controller.update();
                        },
                      ),
                      Radio(
                          value: "name",
                          groupValue: value,
                          onChanged: (value) {
                            value = value.toString();
                            _controller.update();
                          }),
                      Radio(
                          value: "value",
                          groupValue: value,
                          onChanged: (value3) {
                            value3 = value.toString();
                            _controller.update();
                          })
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                semanticContainer: true,
                shadowColor: ColorSelect.button,
                // color: ColorSelect.background,
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Attempts to hold the pencil in the tripod grasp.",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Radio(
                        value: "value",
                        groupValue: value,
                        onChanged: (value1) {
                          value1 = value.toString();
                          _controller.update();
                        },
                      ),
                      Radio(
                          value: value,
                          groupValue: value,
                          onChanged: (value) {
                            value = value.toString();
                            _controller.update();
                          }),
                      Radio(
                          value: "value",
                          groupValue: value,
                          onChanged: (value3) {
                            value3 = value.toString();
                            _controller.update();
                          })
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                semanticContainer: true,
                shadowColor: ColorSelect.button,
                elevation: 4,
                // color: ColorSelect.background,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Attempts to fold paper to make artwork.",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Radio(
                        value: "value",
                        groupValue: value,
                        onChanged: (value1) {
                          value1 = value.toString();
                          _controller.update();
                        },
                      ),
                      Radio(
                          value: "value",
                          groupValue: value,
                          onChanged: (value) {
                            value = value.toString();
                            _controller.update();
                          }),
                      Radio(
                          value: value,
                          groupValue: value,
                          onChanged: (value3) {
                            value3 = value.toString();
                            _controller.update();
                          })
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                semanticContainer: true,
                shadowColor: ColorSelect.button,
                // color: ColorSelect.background,
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Builds a tower of 8 or more blocks.",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Radio(
                        value: value,
                        groupValue: value,
                        onChanged: (value1) {
                          value1 = value.toString();
                          _controller.update();
                        },
                      ),
                      Radio(
                          value: "value",
                          groupValue: value,
                          onChanged: (value) {
                            value = value.toString();
                            _controller.update();
                          }),
                      Radio(
                          value: "value",
                          groupValue: value,
                          onChanged: (value3) {
                            value3 = value.toString();
                            _controller.update();
                          })
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                semanticContainer: true,
                shadowColor: ColorSelect.button,
                elevation: 4,
                // color: ColorSelect.background,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Twists paper with palm.",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Radio(
                        value: "value",
                        groupValue: value,
                        onChanged: (value1) {
                          value1 = value.toString();
                          _controller.update();
                        },
                      ),
                      Radio(
                          value: value,
                          groupValue: value,
                          onChanged: (value) {
                            value = value.toString();
                            _controller.update();
                          }),
                      Radio(
                          value: "value",
                          groupValue: value,
                          onChanged: (value3) {
                            value3 = value.toString();
                            _controller.update();
                          })
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          minWidth: MediaQuery.of(context).size.width * 0.10,
                          height: 45,
                          onPressed: () {
                            Get.snackbar("Success", "Save draft Successfully",
                                colorText: Colors.black,
                                backgroundColor: Colors.white);
                          },
                          color: ColorSelect.button,
                          child: const Text(
                            "Save Draft",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width * 0.10,
                          height: 45,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {
                            Get.snackbar("Success", "Data save Successfully",
                                colorText: Colors.black,
                                backgroundColor: Colors.white);
                          },
                          color: ColorSelect.button,
                          child: const Text(
                            "Save ",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width * 0.10,
                          height: 45,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {
                            Get.snackbar("Success", "Save All Successfully",
                                colorText: Colors.black,
                                backgroundColor: Colors.white);
                          },
                          color: ColorSelect.button,
                          child: const Text(
                            "Save All",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }

/*  void listItem() {
    Card(
      child: Column(
        children: [
          Row(
            children:const [
               Text(
                "N",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "E",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "P",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 1,
                groupValue: 0,
                onChanged: (val) {
                  // setState(() {
                  //   radioButtonItem = 'ONE';
                  //   id = 1;
                  // });
                },
              ),
            ],
          )
        ],
      ),
    );
  }*/
}
