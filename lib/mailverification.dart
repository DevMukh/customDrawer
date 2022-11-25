import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MailVerification extends StatelessWidget {
  const MailVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        title: Text('Mail Verification'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),);
  }
}
