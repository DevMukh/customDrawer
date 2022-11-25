import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Locations extends StatelessWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        title: Text('Locations'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),);
  }
}
