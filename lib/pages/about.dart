import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_first/components/drawer.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('About'),
        ),
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
                      'imgs/wael.jpg',
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
                padding: EdgeInsets.only(top: 3, left: 3),
                child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style:
                            TextStyle(color: Colors.black, fontFamily: 'Cairo'),
                        children: [
                          TextSpan(
                              text:
                                  '-Senior Mobile Developer specializing in front-end development. '),
                          TextSpan(
                              text:
                                  'Experienced with all stages of the development cycle for android mobile app. Well-versed in numerous programming languages including HTML5, PHP OOP, JavaScript, CSS, MySQL.\n'),
                          TextSpan(
                              text:
                                  '-Senior Back-end Developer specializing in Java REST API and ASP.net web service development. Experienced with programming pure pl/sql procedure and using Entity framework.'),
                        ])),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Contact Details",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(top: 3, left: 3),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle,
                          //size: 30,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text('Mhd Wael Al khateeb'),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.place,
                          //size: 30,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('St. Al-wazeer'),
                            Text('Jadedah Artouz, Rural Damascus-Syria')
                          ],
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone,
                          //size: 30,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text('(+963) 6817184'),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email,
                          //size: 30,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text('waelkhatib1992@gmail.com'),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
