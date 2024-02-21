import 'package:flutter/material.dart';
import 'report.dart';

void main(List<String> args) {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
        bodyText1: TextStyle(fontSize: 20, color: Colors.white),
        headline1: TextStyle(
          fontSize: 72,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
        caption: TextStyle(
          fontSize: 18,
          fontStyle: FontStyle.normal,
          color: Colors.white,
        ),
      )),
      home: Scaffold(
          body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/cloud.gif'), fit: BoxFit.cover)),
        child: const Report(),
      )),
    );
  }
}
