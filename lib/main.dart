import 'package:flutter/material.dart';
import 'package:youtube_first/pages/login.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    theme: ThemeData(fontFamily: 'Cairo'),
    debugShowCheckedModeBanner: false,
  ));
}
