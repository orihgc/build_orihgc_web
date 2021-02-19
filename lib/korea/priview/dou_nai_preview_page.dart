// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';

List<String> douNaiPreviewImageList = [
  "images/korea/dounai/豆奶8.png",
  "images/korea/dounai/豆奶7.png",
  "images/korea/dounai/豆奶6.png",
  "images/korea/dounai/豆奶1.png",
  "images/korea/dounai/豆奶2.png",
  "images/korea/dounai/豆奶3.png",
  "images/korea/dounai/豆奶4.png",
  "images/korea/dounai/豆奶5.png",
];

class DouNaiPreviewPage extends StatelessWidget {
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
                        "https://pan.baidu.com/s/16iEND0rpcx5xioEMHaW_Hw", "豆奶");
                  },
                  child: Text(
                    "网盘链接",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ),
                Text(
                  "提取密码: psik",
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
                    child: Image.asset(douNaiPreviewImageList[index]));
              }, childCount: douNaiPreviewImageList.length),
            ),
          ),
        ],
      )),
    );
  }
}
