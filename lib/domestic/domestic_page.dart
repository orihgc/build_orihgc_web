import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/item_model.dart';

class DomesticPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Domestic(),
    );
  }
}

class Domestic extends StatefulWidget {
  @override
  _DomesticState createState() => _DomesticState();
}

class _DomesticState extends State<Domestic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: domesticItems.isEmpty
          ? Center(
              child: Text(
                "整理中，敬请期待",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            )
          : GridView.builder(
              padding: EdgeInsets.all(16),
              itemCount: domesticItems.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                mainAxisExtent: 340,
                maxCrossAxisExtent: 500,
              ),
              itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        domesticItems[index].imagePath,
                        fit: BoxFit.cover,
                        width: 500,
                        height: 300,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "data",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff1984ff)),
                      )
                    ],
                  )),
    );
  }
}
