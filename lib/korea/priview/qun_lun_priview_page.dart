// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';

List<String> qunLunPreviewImageList = [
  "images/korea/qunlun/群论7.png",
  "images/korea/qunlun/群论6.png",
  "images/korea/qunlun/群论4.jpeg",
  "images/korea/qunlun/群论5.jpeg",
  "images/korea/qunlun/群论3.png",
  "images/korea/qunlun/群论1.PNG",
  "images/korea/qunlun/群论2.png",
  "images/korea/qunlun/群论8.png",
  "images/korea/qunlun/群论9.png",
];

class QunLunPreviewPage extends StatelessWidget {
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
                    window.open(
                        "https://pan.baidu.com/s/1Qe4mMswH9c3nTLprrxl3CA", "群论");
                  },
                  child: Text(
                    "网盘链接",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ),
                Text(
                  "提取密码: l7rv",
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
                    child: Image.asset(qunLunPreviewImageList[index]));
              }, childCount: qunLunPreviewImageList.length),
            ),
          )
        ],
      )),
    );
  }
}
