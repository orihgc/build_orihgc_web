import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_demo/item_model.dart';
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
    return GridView.builder(
        padding: EdgeInsets.all(16),
        itemCount: koreaItems.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          mainAxisExtent: 340,
          maxCrossAxisExtent: 500,
        ),
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                window.open("https://www.baidu.com/","百度");
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    koreaItems[index].imagePath,
                    fit: BoxFit.cover,
                    width: 500,
                    height: 300,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "data",
                    style: TextStyle(fontSize: 16, color: Color(0xff1984ff)),
                  )
                ],
              ),
            ));
  }

}
