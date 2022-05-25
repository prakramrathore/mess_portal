import 'package:flutter/material.dart';

import 'mainScreens/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/menuBarBase',
      debugShowCheckedModeBanner: false,
      routes: {
        // ignore: prefer_const_constructors
        '/menuBarBase': (context) => HomePage(),
      },
      title: 'MessPortal',
      theme: ThemeData(fontFamily: 'OpenSans', accentColor: Colors.black),
    );
  }
}
