import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_demo/main.dart';
import 'package:flutter_application_demo/model/item_model.dart';
import 'dart:html';

class KoreaAnchorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: KoreaAnchor(),
    );
  }
}

class KoreaAnchor extends StatefulWidget {
  @override
  _KoreaAnchorState createState() => _KoreaAnchorState();
}

class _KoreaAnchorState extends State<KoreaAnchor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            padding: EdgeInsets.all(16),
            itemCount: koreaItems.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              mainAxisExtent: 340,
              maxCrossAxisExtent: 900,
            ),
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                koreaItems[index].pageAddress));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Image.asset(
                          koreaItems[index].imagePath,
                          fit: BoxFit.cover,
                          width: 500,
                          height: 300,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        koreaItems[index].itemTitle,
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff1984ff)),
                      )
                    ],
                  ),
                )));
  }
}
