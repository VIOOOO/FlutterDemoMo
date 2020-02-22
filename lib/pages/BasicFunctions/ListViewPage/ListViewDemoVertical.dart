import 'package:flutter/material.dart';

// 垂直基本列表

class ListViewDemoVertical extends StatefulWidget {
  ListViewDemoVertical({Key key}) : super(key: key);

  @override
  _ListViewDemoVerticalState createState() => _ListViewDemoVerticalState();
}

class _ListViewDemoVerticalState extends State<ListViewDemoVertical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('垂直基本列表'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Text("一、垂直列表 左右插入图标、图片"),
            ListTile(
              leading: Image.network(
                  'https://flutter.cn/images/assets-and-images/icon.png'),
              title: Text('会Dart'),
              subtitle:
                  Text('Flutter是谷歌公司开发的一款开源、免费的移动UI框架，可以让我们快速的在Android和iOS上。'),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 50,
              ), //图标
              title: Text('要学Flutter的话我们必须首先得会Dart'),
              subtitle: Text(
                  'Flutter是谷歌公司开发的一款开源、免费的移动UI框架，可以让我们快速的在Android和iOS上构建高质量App。它最大的特点就是跨平台、以及高性能。'),
            ),
            ListTile(
              title: Text('要学Flutter得会Dart'),
              subtitle: Text('Flutter是谷歌公司开上构建高质量App。它最大的特点。'),
              trailing: Icon(Icons.home), // 图标放后面
            ),
            ListTile(
              title: Text('要学首先得会Dart'),
              subtitle: Text('上构建高质量App。它最大的特点就是跨平台、以及高性能。'),
              trailing: Icon(Icons.settings),
            ),
            ListTile(
              leading: Icon(
                Icons.pages,
                color: Colors.cyan,
              ),
              title: Text('必须首先得会Dart'),
              subtitle: Text('Flutter是谷歌公司开发的一款Android和iOS上台、以及高性能。'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('们必须首先得会Dart'),
              subtitle: Text('Flutter是谷歌公司开发的一款开源、免费的移动UI跨平台、以及高性能。'),
              trailing: Icon(Icons.home),
            ),
            SizedBox(height: 60),
            Text("二、垂直列表 图文上下"),
            Image.network(
                'https://ossweb-img.qq.com/upload/adw/image/20200120/68498e64124410e35d8c4f1e85a9a790.jpeg'),
            Container(
                child: Text(
                  '文本标题',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                height: 60,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
            Image.network(
                'https://ossweb-img.qq.com/upload/adw/image/20200120/68498e64124410e35d8c4f1e85a9a790.jpeg'),
            Container(
                child: Text(
                  '文本标题',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                height: 60,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
            Image.network(
                'https://ossweb-img.qq.com/upload/adw/image/20200120/68498e64124410e35d8c4f1e85a9a790.jpeg'),
            Container(
                child: Text(
                  '文本标题',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                height: 60,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
            Image.network(
                'https://ossweb-img.qq.com/upload/adw/image/20200120/68498e64124410e35d8c4f1e85a9a790.jpeg'),
            Container(
                child: Text(
                  '文本标题',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                height: 60,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
            Image.network(
                'https://ossweb-img.qq.com/upload/adw/image/20200120/68498e64124410e35d8c4f1e85a9a790.jpeg'),
            Container(
                child: Text(
                  '文本标题',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                height: 60,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
            Image.network(
                'https://ossweb-img.qq.com/upload/adw/image/20200120/68498e64124410e35d8c4f1e85a9a790.jpeg'),
            Container(
                child: Text(
                  '文本标题',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                height: 60,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
          ],
        ),
      ),
    );
  }
}
