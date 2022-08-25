import 'package:flutter/material.dart';

class AlertsPage extends StatelessWidget {
  const AlertsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child: Text("Alerts",style:
        TextStyle(fontSize: 20.0,fontWeight:
        FontWeight.bold,color:
        Colors.black),),
      ),
    );
  }
}