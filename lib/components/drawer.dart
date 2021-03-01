import 'package:flutter/material.dart';

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
                'الصفحة الرئيسية',
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
                Navigator.of(context).pushNamed('homePage');
              },
            ),
            ListTile(
              title: Text(
                'الأقسام',
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
                Navigator.of(context).pushNamed('categories');
              },
            ),
            ListTile(
              title: Text(
                'المنشورات',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              leading: Icon(
                Icons.add_box_sharp,
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
                'حول التطبيق',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              leading: Icon(
                Icons.info,
                color: Colors.blue,
                size: 25,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'الإعدادات',
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
                'تسجيل الدخول',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              leading: Icon(
                Icons.exit_to_app,
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
