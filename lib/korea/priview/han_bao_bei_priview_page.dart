// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';

List<String> hanBaoBeiPreviewImageList = [
  "images/korea/hanbaobei/韩宝贝8.png",
  "images/korea/hanbaobei/韩宝贝7.png",
  "images/korea/hanbaobei/韩宝贝6.png",
  "images/korea/hanbaobei/韩宝贝1.png",
  "images/korea/hanbaobei/韩宝贝2.png",
  "images/korea/hanbaobei/韩宝贝3.png",
  "images/korea/hanbaobei/韩宝贝4.png",
  "images/korea/hanbaobei/韩宝贝5.png",
  "images/korea/hanbaobei/韩宝贝9.png",
];

class HanBaoBeiPreviewPage extends StatelessWidget {
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
                                "https://pan.baidu.com/s/1Ic7TvhFe5zZGYpsCqREYwQ", "韩宝贝");
                          },
                          child: Text(
                            "网盘链接",
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                        ),
                        Text(
                          "提取密码: et23",
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
                  mainAxisExtent: 500),
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return Padding(
                        padding: EdgeInsets.all(16),
                        child: Image.asset(hanBaoBeiPreviewImageList[index]));
                  }, childCount: hanBaoBeiPreviewImageList.length),
                ),
              ),
            ],
          )),
    );
  }
}
