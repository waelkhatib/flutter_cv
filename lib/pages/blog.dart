import 'package:flutter/material.dart';
import 'package:youtube_first/components/drawer.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My blog'),
      ),
      drawer: MyDrawer(),
    );
  }
}
