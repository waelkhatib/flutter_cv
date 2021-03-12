import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:youtube_first/components/drawer.dart';

class AboutPage extends StatelessWidget {
  final contact_list = [
    {'icon': Icons.account_circle, 'value': 'Mhd Wael Al khateeb'},
    {
      'icon': Icons.place,
      'value': 'St. Al-wazeer\nJadedah Artouz, Rural Damascus-Syria'
    },
    {'icon': Icons.phone, 'value': '(+963) 6817184'},
    {'icon': Icons.email, 'value': 'waelkhatib1992@gmail'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: Carousel(
                images: [
                  Image.asset(
                    'imgs/wael.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'imgs/wael2.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'imgs/wael.jpg',
                    fit: BoxFit.fill,
                  ),
                ],
                borderRadius: true,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "About me",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(top: 3, left: 32),
              child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'Cairo'),
                      children: [
                        TextSpan(
                            text:
                                '▪Senior Mobile Developer specializing in front-end development. '),
                        TextSpan(
                            text:
                                'Experienced with all stages of the development cycle for android mobile app. Well-versed in numerous programming languages including HTML5, PHP OOP, JavaScript, CSS, MySQL.\n'),
                        TextSpan(
                            text:
                                '▪Senior Back-end Developer specializing in Java REST API and ASP.NET web service development. Experienced with programming pure pl/sql procedure and using Entity framework.'),
                      ])),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Contact Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.only(top: 3, left: 3),
              height: 230,
              child: ListView.builder(
                itemCount: contact_list.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) {
                  return ListTile(
                      leading: Icon(
                        contact_list[i]['icon'],
                        color: Colors.blue,
                        size: 35,
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          contact_list[i]['value'],
                          style: TextStyle(height: 1.25),
                        ),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
