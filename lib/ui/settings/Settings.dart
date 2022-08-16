import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child: Text("Settings",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black),),
      ),
    );
  }
}