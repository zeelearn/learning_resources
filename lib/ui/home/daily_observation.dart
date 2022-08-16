import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:learning_resources/constant/color_const.dart';
import 'package:learning_resources/controller/observation_controller.dart';
import 'package:learning_resources/ui/home/session_list.dart';

class DailyObservation extends StatelessWidget {
  final ObservationController _controller = Get.put(ObservationController());

   DailyObservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Observation"),
        backgroundColor: const Color(0xff2e3191),
      ),
      body: SingleChildScrollView(
        child: GetBuilder<ObservationController>(
          init: _controller,
          builder: (value) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
                  child: Row(
                    children: [
                      const Text(
                        "Select Culmination",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: CustomDropdownButton2(
                          //value: value.culmination.isNotEmpty ? _value1 : null,
                          hint: 'Select Culmination',
                          dropdownItems: value.culmination,
                          value: value.selectedValue,
                          onChanged: (value1) {
                            value.selectedValue = value1;
                            _controller.update();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
                  child: Row(
                    children: [
                      const Text(
                        "Select Week",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: CustomDropdownButton2(
                          hint: 'Select Week',
                          dropdownItems: value.week,
                          value: value.weekS,
                          onChanged: (week) {
                            value.weekS = week;
                            _controller.update();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
                  child: Row(
                    children: [
                      const Text(
                        "Select Day",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: CustomDropdownButton2(
                          hint: 'Select Day',
                          dropdownItems: value.day,
                          value: value.dayS,
                          onChanged: (day) {
                            value.dayS = day;
                            _controller.update();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
                  child: Row(
                    children: [
                      const Text(
                        "Select Session",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: CustomDropdownButton2(
                          hint: 'Select Session',
                          dropdownItems: value.session,
                          value: value.sessionS,
                          onChanged: (session) {
                            value.sessionS = session;
                            _controller.update();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
                  child: Row(
                    children: [
                      const Text(
                        "Select Domain",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: CustomDropdownButton2(
                          hint: 'Select Domain',
                          dropdownItems: value.domain,
                          value: value.domainS,
                          onChanged: (domain) {
                            value.domainS = domain;
                            _controller.update();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 90.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.20,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Get.to(()=>SesstionListPage());
                    },
                    color: ColorSelect.button,
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
