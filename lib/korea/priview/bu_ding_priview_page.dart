// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';

List<String> buDingPreviewImageList = [
  "images/korea/buding/布丁4.jpeg",
  "images/korea/buding/布丁5.jpeg",
  "images/korea/buding/布丁6.jpeg",
  "images/korea/buding/布丁7.jpeg",
  "images/korea/buding/布丁1.png",
  "images/korea/buding/布丁2.png",
  "images/korea/buding/布丁3.png",
];

class BuDingPreviewPage extends StatelessWidget {
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
                        "https://pan.baidu.com/s/1vHVcUMDdEhXIVuM1PGmJXw", "布丁");
                  },
                  child: Text(
                    "网盘链接",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ),
                Text(
                  "提取密码: q531",
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
                    child: Image.asset(buDingPreviewImageList[index]));
              }, childCount: buDingPreviewImageList.length),
            ),
          )
        ],
      )),
    );
  }
}
