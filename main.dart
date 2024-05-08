import 'package:flutter/material.dart';
import 'shoes_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes List',
      home: ShoesList(),
    );
  }
}