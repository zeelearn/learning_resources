import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Contacts')),
      drawer: Drawer(),
      body:const Center(
        child: Text('Contacts'),
      ),
    );
  }
}

