// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';

List<String> shuangCPreviewImageList = [
  "images/korea/shuangC/双C3.png",
  "images/korea/shuangC/双C1.png",
  "images/korea/shuangC/双C4.png",
  "images/korea/shuangC/双C5.png",
  "images/korea/shuangC/双C6.png",
  "images/korea/shuangC/双C7.png",
  "images/korea/shuangC/双C2.png",
];

class ShuangCPreviewPage extends StatelessWidget {
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
                                "https://pan.baidu.com/s/1jWiPoF1btBTQDo5jmcuVig", "双C");
                          },
                          child: Text(
                            "网盘链接",
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                        ),
                        Text(
                          "提取密码: 4jue",
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
                        child: Image.asset(shuangCPreviewImageList[index]));
                  }, childCount: shuangCPreviewImageList.length),
                ),
              )
            ],
          )),
    );
  }
}
