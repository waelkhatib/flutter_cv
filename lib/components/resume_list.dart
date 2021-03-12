import 'package:flutter/material.dart';

class ResumeList extends StatelessWidget {
  final offset;
  const ResumeList({
    @required this.educ_exp,
    this.offset = 0,
  });

  final List<Map<String, String>> educ_exp;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ListTile(
                leading: Container(
                  width: 48,
                  height: 48,
                  child: CircleAvatar(
                    child: Image.asset(
                      'imgs/cake.png',
                    ),
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            fontSize: 20,
                            height: 1.25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'Cairo'),
                        children: [
                          TextSpan(
                              text: educ_exp[i + offset]['title1'] + '\n',
                              style: TextStyle(color: Colors.blue)),
                          TextSpan(
                            text: educ_exp[i + offset]['title2'],
                          ),
                        ]),
                  ),
                ),
                subtitle: RichText(
                  text: TextSpan(
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'Cairo'),
                      children: [
                        TextSpan(
                            text: educ_exp[i + offset]['title3'] + '\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 1.25,
                            )),
                        TextSpan(
                            text: educ_exp[i + offset]['sub_title'],
                            style: TextStyle(
                              height: 1.25,
                            )),
                      ]),
                ),
              ),
            );
          }),
    );
  }
}
