import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_first/components/drawer.dart';
import 'package:youtube_first/pages/about.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              Text(
                "Mhd Wael Al khateeb",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Senior back-end & front-end developer",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Develop mobile applications and design ASP.net web services and REST java APIs",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AboutPage()));
                },
                color: Colors.orangeAccent,
                child: Text(
                  "Let's begin",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('imgs/office.jpg'), fit: BoxFit.fill)),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
