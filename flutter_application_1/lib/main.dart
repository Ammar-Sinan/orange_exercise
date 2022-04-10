import 'package:flutter/material.dart';

import './screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TabsScreen(),
    );
  }
}

final List<String> cat = [
  'All',
  'Sport',
  'Men',
  'Women',
];



// on tap calls a function