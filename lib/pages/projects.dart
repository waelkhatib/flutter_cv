import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:youtube_first/components/drawer.dart';

class ProjectsPage extends StatelessWidget {
  final project_list = [
    {
      'image': 'image1.png',
      'name': 'Akrab eliek',
      'category': 'Mobile Development',
      'begin': 1,
      'end': 8,
      'description':
          'a mobile app that enables you to benefit from the services of Syriatel company such as (activate/deactivate) service/bundle on your GSM and view your bills and current consumption and more.',
      'ext': 'png'
    },
    {
      'image': 'image32.png',
      'name': 'Reminder call',
      'category': 'Mobile Development',
      'begin': 32,
      'end': 50,
      'description':
          'An android app that serves people who need to meet others at certain times such as\n1.	Persons with disabilities who need to be served at specified times and sometimes periodically (helping to take medicine).\n2.	Managers who hold meetings with their employees at specific times and places.\nThe goal of the app is to remind others with calls and text messages.',
      'ext': 'png'
    },
    {
      'image': 'image51.png',
      'name': 'Learn french',
      'category': 'Mobile Development',
      'begin': 51,
      'end': 62,
      'description':
          'An android app to help students to learn French language easily.',
      'ext': 'png'
    },
    {
      'image': 'image63.png',
      'name': 'Knowledge bank',
      'category': 'Web Development',
      'begin': 63,
      'end': 76,
      'description':
          'A Website contains an interface for admin to manage the site so that any person can access admin interface and add its content in the form of posts and posts must have classes (i.e. the broad address of the post  is related to web programming or mobile programming) and got  a content rating, in addition to that this site supports the search feature and automatic sending notifications to users when adding anything new.  Normal users can browse posts and communicate with admin and give their  opinions on the content.',
      'ext': 'png'
    },
    {
      'image': 'image78.jpeg',
      'name': 'Puzzle animal',
      'category': 'Mobile Development',
      'begin': 78,
      'end': 85,
      'description':
          'An android app contains 20 animal images ,when the user clicks on an image this image is fragmented and shuffled, the user should assemble the parts of the image to get the original image.',
      'ext': 'png'
    },
    {
      'image': 'image87.jpg',
      'name': 'Change Voice',
      'category': 'Mobile Development',
      'begin': 87,
      'end': 90,
      'description':
          'An android app the user records his voice and he can change his tone to one of the following tones:(ghost, slow motion, robot, normal, elephant, bee, funny and chipmunk) and listen to the updated audio record and share it with his friend through Whatsapp.',
      'ext': 'jpg'
    },
    {
      'image': 'image91.jpg',
      'name': 'مسابقات إسلامية',
      'category': 'Mobile Development',
      'begin': 91,
      'end': 101,
      'description':
          'An android educational app devoted for kids. It has series of questions,  each question presents an image and hint about the content of the shown image and a set of small blank circles, the player should choose to fill the blank circles from a set of  Arabic letters that form the word represents the  name of the content of the shown image.',
      'ext': 'jpg'
    },
    {
      'image': 'image102.jpg',
      'name': 'Guess sound',
      'category': 'Mobile Development',
      'begin': 102,
      'end': 112,
      'description':
          'An android educational app devoted for kids. It has series of questions, In each question the player listen to a specific voice, he sees a hint about who made it and a and a set of small blank round rectangles, the player should choose to fill the blank round rectangles from a set of  English letters that form the word represents the  name of who made the sound.',
      'ext': 'jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projects"),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                crossAxisCount: 2),
            itemCount: project_list.length,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                child: GridTile(
                  child: Image.asset(
                    'imgs/${project_list[index]['image']}',
                    fit: BoxFit.fill,
                  ),
                  footer: Container(
                    height: 40,
                    color: Colors.black.withOpacity(0.5),
                    child: Center(
                      child: Text(
                        project_list[index]['name'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  showCustomDialog(project_list[index], context);
                },
              );
            }),
      ),
    );
  }

  void showCustomDialog(
      Map<String, Object> project_list, BuildContext context) {
    var img_list = [];
    for (var i = project_list['begin'] as int; i <= project_list['end']; i++) {
      img_list.add(Image.asset(
        'imgs/image' + '$i' + '.${project_list['ext']}',
        fit: BoxFit.fill,
      ));
    }
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
                height: 550,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 300,
                          child: Carousel(
                            images: img_list,
                            dotSpacing: 12,
                            //borderRadius: true,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(4, 4, 4, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.branding_watermark_outlined),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    project_list['category'],
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              Container(
                                height: 180,
                                child: SingleChildScrollView(
                                  child: RichText(
                                      textAlign: TextAlign.justify,
                                      text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          children: [
                                            TextSpan(
                                                text:
                                                    project_list['description'])
                                          ])),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      child: Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        height: 30,
                        width: 280,
                        color: Colors.blue,
                        child: FlatButton(
                          padding: EdgeInsets.zero,
                          minWidth: 0,
                          height: 0,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          child: Text(
                            "Close",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      bottom: 0,
                    )
                  ],
                )),
          );
        });
  }
}
