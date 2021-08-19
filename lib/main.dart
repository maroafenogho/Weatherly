import 'package:flutter/material.dart';
import 'package:weatherly/screens/loading_screen.dart';

void main() {
  runApp(MyApp());
  // runApp(
  //   MaterialApp(
  //     home: MyApp(),
  //     title: 'Weatherly',
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weatherly',
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
