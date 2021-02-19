import 'package:flutter_application_demo/korea/priview/akfms_priview_page.dart';
import 'package:flutter_application_demo/korea/priview/bu_ding_priview_page.dart';
import 'package:flutter_application_demo/korea/priview/dou_nai_preview_page.dart';
import 'package:flutter_application_demo/korea/priview/han_bao_bei_priview_page.dart';
import 'package:flutter_application_demo/korea/priview/missed_you_priview_page.dart';
import 'package:flutter_application_demo/korea/priview/qun_lun_priview_page.dart';
import 'package:flutter_application_demo/korea/priview/shuang_c_priview_page.dart';
import 'package:flutter_application_demo/korea/priview/ti_mo_preview_page.dart';

class ItemModel {
  final String imagePath;
  final String netDiskAddress;
  final String netDiskPassword;
  final String buyUrl;
  final String itemTitle;
  final Object pageAddress;

  ItemModel(
      {this.imagePath,
      this.netDiskAddress,
      this.netDiskPassword,
      this.buyUrl,
      this.itemTitle,
      this.pageAddress});
}

List<ItemModel> koreaItems = [
  ItemModel(
      itemTitle: "布丁",
      imagePath: "images/korea/buding/布丁6.jpeg",
      pageAddress: BuDingPreviewPage()),
  ItemModel(
      itemTitle: "豆奶",
      imagePath: "images/korea/dounai/豆奶8.png",
      pageAddress: DouNaiPreviewPage()),
  ItemModel(
      itemTitle: "提莫",
      imagePath: "images/korea/timo/提莫5.png",
      pageAddress: TiMoPreviewPage()),
  ItemModel(
      itemTitle: "双C",
      imagePath: "images/korea/shuangC/双C3.png",
      pageAddress: ShuangCPreviewPage()),
  ItemModel(
      itemTitle: "AKFMS",
      imagePath: "images/korea/akfms/akfms1.png",
      pageAddress: AkfmsPreviewPage()),
  ItemModel(
      itemTitle: "MissedYou",
      imagePath: "images/korea/missedyou/missedyou2.png",
      pageAddress: MissedYouPreviewPage()),
  ItemModel(
      itemTitle: "韩宝贝",
      imagePath: "images/korea/hanbaobei/韩宝贝8.png",
      pageAddress: HanBaoBeiPreviewPage()),
  ItemModel(
      itemTitle: "群论",
      imagePath: "images/korea/qunlun/群论7.png",
      pageAddress: QunLunPreviewPage()),
];

List<ItemModel> prItems = [];

List<ItemModel> domesticItems = [];
