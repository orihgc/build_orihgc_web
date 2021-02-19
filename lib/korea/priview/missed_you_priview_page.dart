// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';

List<String> missedYouPreviewImageList = [
  "images/korea/missedyou/missedyou2.png",
  "images/korea/missedyou/missedyou4.png",
  "images/korea/missedyou/missedyou3.png",
  "images/korea/missedyou/missedyou1.png",
  "images/korea/missedyou/missedyou5.png",
  "images/korea/missedyou/missedyou6.png",
  "images/korea/missedyou/missedyou7.png",
  "images/korea/missedyou/missedyou8.png",
  "images/korea/missedyou/missedyou9.png",
];

class MissedYouPreviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        Navigator.pop(context);
        return Future.value(true);
      },
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    window.open("https://pan.baidu.com/s/1ssu3VF7p0QhoDSkKrh4J9g",
                        "MissedYou");
                  },
                  child: Text(
                    "网盘链接",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ),
                Text(
                  "提取密码: iufn",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            )),
          ),
          SliverToBoxAdapter(
            child: Divider(),
          ),
          SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Text(
                "预览",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(32),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 1000),
              delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                    padding: EdgeInsets.all(16),
                    child: Image.asset(missedYouPreviewImageList[index]));
              }, childCount: missedYouPreviewImageList.length),
            ),
          )
        ],
      )),
    );
  }
}
