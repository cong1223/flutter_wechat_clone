import 'package:flutter/material.dart';

import 'dart:async';

import 'app.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        "images/loading.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
