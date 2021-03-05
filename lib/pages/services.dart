import 'package:flutter/material.dart';
import 'package:youtube_first/components/drawer.dart';

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
      ),
      drawer: MyDrawer(),
    );
  }
}
