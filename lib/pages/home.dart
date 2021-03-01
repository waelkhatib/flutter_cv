import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_first/components/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('General Info'),
        ),
        body: Container(),
        drawer: MyDrawer(),
      ),
    );
  }
}
