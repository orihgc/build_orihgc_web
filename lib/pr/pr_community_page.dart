import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/item_model.dart';

class PrCommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrCommunity(),
    );
  }
}

class PrCommunity extends StatefulWidget {
  @override
  _PrCommunityState createState() => _PrCommunityState();
}

class _PrCommunityState extends State<PrCommunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: prItems.isEmpty
          ? Center(
              child: Text(
                "整理中，敬请期待",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.red),
              ),
            )
          : GridView.builder(
              padding: EdgeInsets.all(16),
              itemCount: prItems.length,
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
                      Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          prItems[index].imagePath,
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
                        "data",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff1984ff)),
                      )
                    ],
                  )),
    );
  }
}
