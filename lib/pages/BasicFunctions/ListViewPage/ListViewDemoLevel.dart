import 'package:flutter/material.dart';

//  水平基本列表 需要在列表外设置高度

class ListViewDemoLevel extends StatefulWidget {
  ListViewDemoLevel({Key key}) : super(key: key);

  @override
  _ListViewDemoLevelState createState() => _ListViewDemoLevelState();
}

class _ListViewDemoLevelState extends State<ListViewDemoLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('水平基本列表'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 180.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal, // 水平列表
                    children: <Widget>[
                      Container(
                        width: 180.0,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 180.0,
                        color: Colors.yellow,
                        child: ListView(children: <Widget>[
                          Image.network(
                              'https://ossweb-img.qq.com/upload/adw/image/20200120/68498e64124410e35d8c4f1e85a9a790.jpeg'),
                          Text('这是一段文字')
                        ]),
                      ),
                      Container(
                        width: 180.0,
                        color: Colors.orange,
                      ),
                      Container(
                        width: 180.0,
                        color: Colors.brown,
                      ),
                      Container(
                        width: 180.0,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
