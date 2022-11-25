import 'package:customheaderdrawer/contact.dart';
import 'package:customheaderdrawer/mailverification.dart';
import 'package:customheaderdrawer/security.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'inbox.dart';
import 'location.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Navigator',
      home: homePage(),
    );
  }
}

var ince = 0;

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        appBar: AppBar(
          title: Text('Drawer'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.stacked,
            curve: Curves.easeInOutExpo,
          ),
        ),
        drawer: Drawer(
          child: Container(
            margin: EdgeInsets.only(left: 2,),
            //  margin: EdgeInsets.only(left: 5),
            child: Column(children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('images/oo.jpg')),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/bus.jpg'),
                      backgroundColor: Colors.blueGrey,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.add_a_photo,
                                color: Colors.white,
                                size: 20,
                              )
                            ]),
                      ),
                    ),
                    Text(
                      'Mr.Perfect',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'mrPer@gmail.com',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.alternate_email_outlined,
                            size: 20,
                            color: Colors.black,
                          ),
                          onLongPress: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MailVerification()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.insert_page_break_outlined,
                      size: 20,
                      color: Colors.black87,
                    ),
                    title: Text(
                      'contact pages',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Contact()));
                    },
                    trailing: Icon(
                      Icons.check_circle_rounded,
                      size: 20,
                      color: Colors.black45,
                    ),
                  ),
                  ListTile(
                      leading:
                          Icon(Icons.inbox, size: 20, color: Colors.black87),
                      title: Text(
                        'Inbox',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Inbox()));
                      },
                      trailing: Icon(
                        Icons.pending_actions_sharp,
                        size: 20,
                        color: Colors.black45,
                      )),
                  ListTile(
                      leading: Icon(
                        Icons.share_location_sharp,
                        size: 20,
                        color: Colors.black87,
                      ),
                      title: Text(
                        'Location',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Locations()));
                      },
                      trailing: Icon(
                        Icons.share,
                        size: 20,
                        color: Colors.black45,
                      )),
                  ListTile(
                      leading: Icon(
                        Icons.security,
                        size: 20,
                        color: Colors.black87,
                      ),
                      title: Text(
                        'Security',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Security()));
                      },
                      trailing: Icon(
                        Icons.clean_hands,
                        size: 20,
                        color: Colors.black45,
                      )),
                  ListTile(
                      leading: Icon(
                        Icons.add_box,
                        size: 20,
                        color: Colors.black87,
                      ),
                      title: Text(
                        'All about',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => About()));
                      },
                      trailing: Icon(
                        Icons.do_not_disturb_on_total_silence,
                        size: 20,
                        color: Colors.black45,
                      )),
                  Divider(
                    thickness: 1,
                    color: Colors.indigo,
                  )
                ],
              )
            ]),
          ),
        ));
  }
}
