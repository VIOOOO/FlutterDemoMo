import 'package:flutter/material.dart';

// Flutter ListView基础列表组件、水平列表组件、图标组件

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView基础列表组件'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text("基本列表-水平列表 Level"),
              onPressed: () {
                Navigator.pushNamed(context, '/listViewDemoLevel');
              },
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text("基本列表-垂直列表 Vertical"),
              onPressed: () {
                Navigator.pushNamed(context, '/listViewDemoVertical');
              },
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text("动态列表 Dynamic"),
              onPressed: () {
                Navigator.pushNamed(context, '/listViewDemoDynamic');
              },
            ),
            SizedBox(height: 20),
                        RaisedButton(
              child: Text("列表下拉 上拉刷新  Refresh"),
              onPressed: () {
                Navigator.pushNamed(context, '/listViewDemoRefresh');
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
