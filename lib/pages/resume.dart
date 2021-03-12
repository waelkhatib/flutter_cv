import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:youtube_first/components/drawer.dart';
import 'package:youtube_first/components/resume_list.dart';

class ResumePage extends StatelessWidget {
  var educ_exp = [
    {
      "title1": "2010-2017",
      "title2": "Bachelor's degree",
      "title3":
          "Damascus University – Faculty of Information Technology Engineering Damascus – Syria.",
      "sub_title":
          "▪Basic Engineering subjects Like(Math, Physics, Programming, Modelling, OOP,Networking).\n▪Software engineering and information systems subjects.",
    },
    {
      "title1": "2009-2010",
      "title2": "Computer Technology Professional Secondary Certificate",
      "title3":
          "Abu Al Atyhia Computer technology Secondary school, Damascus-Syria",
      "sub_title":
          "▪The first at the level of Syria in professional secondary certificate “Computer Technology” for 2010.",
    },
    {
      "title1": "2016-2017",
      "title2": "Web Developer & Designer",
      "title3":
          "LARSA Company for IT Solution Damascus – Ashaalan – Dar Asalam school.",
      "sub_title":
          "▪Pure PHP websites Developing and Magento E-commerce Framework first try.\n▪Frontend developing using HTML,CSS and jQuery",
    },
    {
      "title1": "2017-Present",
      "title2": "Mobile Development Specialist",
      "title3": "Syriatel Telecom Company Damascus - Sahnaya - Syriatel tower.",
      "sub_title":
          "I have accomplished multiple tasks:\n▪Android app development using Java.\n▪PL/SQL methods Development.\n▪JAVA Restful API and ASP.NET web service development.",
    },
  ];
  var skills = [
    {"name": "HTML", "eval": 75},
    {"name": "CSS", "eval": 65},
    {"name": "JQuery", "eval": 85},
    {"name": "Magento", "eval": 57},
    {"name": "C#", "eval": 90},
    {"name": "Java", "eval": 83},
    {"name": "JSF", "eval": 33},
    {"name": "PHP", "eval": 65},
    {"name": "Microsoft office tools", "eval": 50},
    {"name": "C++", "eval": 63},
    {"name": "Bootstrap", "eval": 60},
    {"name": "Flutter", "eval": 75},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume'),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Education",
              style: TextStyle(
                  //      color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            ResumeList(educ_exp: educ_exp),
            Text(
              "Experience",
              style: TextStyle(
                  //        color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            ResumeList(
              educ_exp: educ_exp,
              offset: 2,
            ),
            Text(
              "Skills",
              style: TextStyle(
                  //    color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Container(
                height: 450,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: skills.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Row(children: [
                          Expanded(
                              flex: 1,
                              child: Text(
                                skills[i]['name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, height: 1.25),
                              )),
                          Expanded(
                            flex: 3,
                            child: LinearPercentIndicator(
                              animation: true,
                              lineHeight: 20.0,
                              animationDuration: 2500,
                              percent: (skills[i]['eval'] as int) / 100.0,
                              center: Text("${skills[i]['eval']}%"),
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: getColor(skills[i]['eval'] as int),
                            ),
                          )
                        ]),
                      );
                    })),
          ]),
        ),
      ),
    );
  }

  Color getColor(int eval) {
    if (eval <= 40)
      return Colors.red;
    else if (eval < 60)
      return Colors.orange;
    else if (eval <= 80)
      return Colors.blue;
    else
      return Colors.green;
  }
}
