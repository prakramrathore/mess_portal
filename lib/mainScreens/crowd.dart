import 'package:flutter/material.dart';
import 'package:mess_portal/themeing/notifier.dart';

class Crowd extends StatefulWidget {
  const Crowd({ Key? key }) : super(key: key);

  @override
  _CrowdState createState() => _CrowdState();
}

class _CrowdState extends State<Crowd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Center(child: Text('crowd'),),
    );
  }
}