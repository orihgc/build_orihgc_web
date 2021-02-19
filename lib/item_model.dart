class ItemModel {
  final String imagePath;
  final String netDiskAddress;
  final String netDiskPassword;
  final String buyUrl;
  final String itemTitle;

  ItemModel(
      {this.imagePath,
      this.netDiskAddress,
      this.netDiskPassword,
      this.buyUrl,
      this.itemTitle});
}

List<ItemModel> koreaItems = [
  ItemModel(imagePath: "images/korea/buding/布丁6.jpeg"),
];
