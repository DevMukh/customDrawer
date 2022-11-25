import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Security extends StatelessWidget {
  const Security({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        title: Text('Security'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),);
  }
}
