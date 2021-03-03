import 'package:flutter/material.dart';
import 'package:youtube_first/pages/about.dart';
import 'package:youtube_first/pages/home.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'wael al khateeb',
                ),
              ),
              accountEmail: Text('wael@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Icon(
                  Icons.person,
                  size: 48,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage('imgs/header_bg.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.blue,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              title: Text(
                'About',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              leading: Icon(
                Icons.category,
                color: Colors.blue,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AboutPage()));
              },
            ),
            ListTile(
              title: Text(
                'Resume',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              leading: Icon(
                Icons.file_present,
                color: Colors.blue,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).pushNamed('post');
              },
            ),
            Divider(
              color: Colors.blue,
            ),
            ListTile(
              title: Text(
                'Services',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              leading: Icon(
                Icons.miscellaneous_services_rounded,
                color: Colors.blue,
                size: 25,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Projects',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              leading: Icon(
                Icons.memory,
                color: Colors.blue,
                size: 25,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'My Blog',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              leading: Icon(
                Icons.settings,
                color: Colors.blue,
                size: 25,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Contacts',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).pushNamed('login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
