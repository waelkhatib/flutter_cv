import 'package:flutter/material.dart';
import 'package:youtube_first/pages/home.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(fontFamily: 'Cairo'),
    debugShowCheckedModeBanner: false,
  ));
}
