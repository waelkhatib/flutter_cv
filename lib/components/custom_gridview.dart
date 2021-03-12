import 'package:flutter/material.dart';

class GridViewCards extends StatelessWidget {
  final bool more;
  const GridViewCards({
    @required this.items,
    this.more = false,
  });

  final List<Map<String, String>> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2 / 2.25,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 2),
          itemCount: items.length,
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              onTap: () {},
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: new Column(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child:
                              Image.asset('imgs/${items[index]['image']}.png')),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            items[index]['title'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, height: 1.25),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: [
                                TextSpan(text: items[index]['description']),
                                TextSpan(
                                    text: more ? 'read more' : '',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        decoration: TextDecoration.underline)),
                              ],
                              style: TextStyle(
                                  height: 1.25,
                                  fontFamily: 'Cairo',
                                  color: Colors.black),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
