import 'package:flutter/material.dart';
import 'package:youtube_first/components/drawer.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = 16.0;
    return Scaffold(
        appBar: AppBar(
          title: Text("Contacts"),
        ),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(4, 4, 4, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You can email me at any time and you will receive my response within 24 hours, maximum.',
                  style: TextStyle(fontSize: size),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10,
                            spreadRadius: 1.5
                            // Shadow position
                            ),
                      ]),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              flex: 2,
                              child: RichText(
                                text: TextSpan(
                                    style: TextStyle(fontSize: size),
                                    children: [
                                      TextSpan(
                                          text: 'Name',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      TextSpan(
                                          text: '*',
                                          style: TextStyle(color: Colors.red)),
                                    ]),
                              )),
                          Expanded(
                              flex: 4,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Enter your name',
                                    contentPadding: EdgeInsets.all(8),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              flex: 2,
                              child: RichText(
                                text: TextSpan(
                                    style: TextStyle(fontSize: size),
                                    children: [
                                      TextSpan(
                                          text: 'Email',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      TextSpan(
                                          text: '*',
                                          style: TextStyle(color: Colors.red)),
                                    ]),
                              )),
                          Expanded(
                              flex: 4,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Enter your email',
                                    contentPadding: EdgeInsets.all(8),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              flex: 2,
                              child: RichText(
                                text: TextSpan(
                                    style: TextStyle(fontSize: size),
                                    children: [
                                      TextSpan(
                                          text: 'Subject',
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ]),
                              )),
                          Expanded(
                              flex: 4,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Enter a subject',
                                    contentPadding: EdgeInsets.all(8),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 24),
                                child: RichText(
                                  text: TextSpan(
                                      style: TextStyle(fontSize: size),
                                      children: [
                                        TextSpan(
                                            text: 'Description',
                                            style:
                                                TextStyle(color: Colors.black)),
                                        TextSpan(
                                            text: '*',
                                            style:
                                                TextStyle(color: Colors.red)),
                                      ]),
                                ),
                              )),
                          Expanded(
                              flex: 4,
                              child: TextField(
                                maxLines: 5,
                                minLines: 3,
                                maxLength: 4000,
                                decoration: InputDecoration(
                                    hintText: 'Enter a description',
                                    contentPadding: EdgeInsets.all(8),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      RaisedButton(
                        onPressed: () {},
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blueAccent,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Center(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    color: Colors.black,
                                    spreadRadius: 1.5)
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundColor: Colors.white,
                              child: Image.asset('imgs/facebook.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    color: Colors.black,
                                    spreadRadius: 1.5)
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundColor: Colors.white,
                              child: Image.asset('imgs/twitter.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black,
                                  spreadRadius: 1.5)
                            ],
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundColor: Colors.white,
                              child: Image.asset('imgs/instagram.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
