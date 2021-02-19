// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';

List<String> akfmsPreviewImageList = [
  "images/korea/akfms/akfms1.png",
  "images/korea/akfms/akfms4.png",
  "images/korea/akfms/akfms5.png",
  "images/korea/akfms/akfms6.png",
  "images/korea/akfms/akfms7.png",
  "images/korea/akfms/akfms2.png",
  "images/korea/akfms/akfms3.png",
  "images/korea/akfms/akfms8.png",
  "images/korea/akfms/akfms9.png",
];

class AkfmsPreviewPage extends StatelessWidget {
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
                                "https://pan.baidu.com/s/1nwqZ3Q90zRGf6vkqhiawTA", "AKFMS");
                          },
                          child: Text(
                            "网盘链接",
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                        ),
                        Text(
                          "提取密码: 7fdu",
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
                    return Padding(padding: EdgeInsets.all(16),
                        child: Image.asset(akfmsPreviewImageList[index]));
                  }, childCount: akfmsPreviewImageList.length),
                ),
              )
            ],
          )),
    );
  }
}
