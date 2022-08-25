import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
class ObservationController extends GetxController{
  TextEditingController fieldOne = TextEditingController();
  TextEditingController fieldTwo = TextEditingController();
  TextEditingController fieldThree = TextEditingController();
  TextEditingController fieldFour = TextEditingController();
  TextEditingController fieldFive = TextEditingController();

  final List<String> culmination = [
    'Select Culmination',
    'Culmination 1',
    'Culmination 2',
    'Culmination 3',
    'Culmination 4',
    'Culmination 5',
    'Culmination 6',
  ];

  final List<String> week = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',

  ];
  final List<String> day = [
    'Select Day',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];

  final List<String> session = [
    'Select Session',
    'session 1',
    'session 2',
    'session 3',
    'session 4',
    'session 5',
    'session 6',
  ];

  final List<String> domain = [
    'Select Domain',
    'domain 1',
    'domain 2',
    'domain 3',
    'domain 4',
    'domain 5',
    'domain 6',
  ];
  String? selectedValue;
  String? weekS;
  String? domainS;
  String? sessionS;
  String? dayS;

 // String? selectedValue;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  List<DropdownMenuItem<String>> addDividersAfterItems(List<String> items) {
    List<DropdownMenuItem<String>> menuItems = [];
    for (var item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          if (item != items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(),
            ),
        ],
      );
      update();
    }
    return menuItems;
  }

/*  List<int> getDividersIndexes() {
    List<int> dividersIndexes = [];
    for (var i = 0; i < (Culmination.length * 2) - 1; i++) {
      if (i.isOdd) {
        dividersIndexes.add(i);
        update();
      }
    }
    return dividersIndexes;
  }*/

}