// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';

List<String> tiMoPreviewImageList = [
  "images/korea/timo/提莫1.png",
  "images/korea/timo/提莫4.png",
  "images/korea/timo/提莫5.png",
  "images/korea/timo/提莫6.png",
  "images/korea/timo/提莫8.png",
  "images/korea/timo/提莫7.png",
  "images/korea/timo/提莫2.png",
  "images/korea/timo/提莫3.png",
];

class TiMoPreviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
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
                    window.open(
                        "https://pan.baidu.com/s/1HD9XJj1PqGu7JEtczoW0mg",
                        "提莫");
                  },
                  child: Text(
                    "网盘链接",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ),
                Text(
                  "提取密码: dv06",
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
                maxCrossAxisExtent: 1000,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                    padding: EdgeInsets.all(16),
                    child: Image.asset(tiMoPreviewImageList[index]));
              }, childCount: tiMoPreviewImageList.length),
            ),
          )
        ],
      )),
    );
  }
}
