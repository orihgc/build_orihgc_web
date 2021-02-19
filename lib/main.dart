import 'package:flutter/material.dart';
import 'package:flutter_application_demo/domestic/domestic_page.dart';
import 'package:flutter_application_demo/korea/korea_anchor_page.dart';
import 'package:flutter_application_demo/pr/pr_community_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Hello'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  var pageList = [KoreaAnchorPage(), PrCommunityPage(), DomesticPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("韩国")),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("ASMR")),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text("PR社")),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            this.currentIndex = index;
          });
        },
      ),
      body: pageList[currentIndex],
    );
  }
}
