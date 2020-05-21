import 'package:flutter/material.dart';
import 'package:foodapp_ui/pages/home_page.dart';
import 'package:foodapp_ui/pages/order_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food UI Vietnam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomePage(),
    );
  }
}