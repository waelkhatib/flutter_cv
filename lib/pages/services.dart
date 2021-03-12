import 'package:flutter/material.dart';
import 'package:youtube_first/components/custom_gridview.dart';
import 'package:youtube_first/components/drawer.dart';

class ServicesPage extends StatelessWidget {
  var services = [
    {
      "image": "web",
      "title": "Web development",
      "description":
          "We can provide website with high quality and neat design and high speed."
    },
    {
      "image": "mobile",
      "title": "Mobile development",
      "description":
          "We can provide android app with high quality and neat design and high speed."
    },
    {
      "image": "backend",
      "title": "Backend development",
      "description":
          "We can provide Java/ASP.NET API with well-structured response and high speed."
    },
    {
      "image": "web",
      "title": "Web development",
      "description":
          "We can provide website with high quality and neat design and high speed."
    },
    {
      "image": "mobile",
      "title": "Mobile development",
      "description":
          "We can provide android app with high quality and neat design and high speed."
    },
    {
      "image": "backend",
      "title": "Backend development",
      "description":
          "We can provide Java/ASP.NET API with well-structured response and high speed."
    },
    {
      "image": "web",
      "title": "Web development",
      "description":
          "We can provide website with high quality and neat design and high speed."
    },
    {
      "image": "mobile",
      "title": "Mobile development",
      "description":
          "We can provide android app with high quality and neat design and high speed."
    },
    {
      "image": "backend",
      "title": "Backend development",
      "description":
          "We can provide Java/ASP.NET API with well-structured response and high speed."
    },
    {
      "image": "web",
      "title": "Web development",
      "description":
          "We can provide website with high quality and neat design and high speed."
    },
    {
      "image": "mobile",
      "title": "Mobile development",
      "description":
          "We can provide android app with high quality and neat design and high speed."
    },
    {
      "image": "backend",
      "title": "Backend development",
      "description":
          "We can provide Java/ASP.NET API with well-structured response and high speed."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Services'),
        ),
        drawer: MyDrawer(),
        body: GridViewCards(items: services));
  }
}
