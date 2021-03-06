import 'package:flutter/material.dart';

// 基础的功能组件

class BasicFunsPage extends StatefulWidget {
  BasicFunsPage({Key key}) : super(key: key);

  @override
  _BasicFunsPageState createState() => _BasicFunsPageState();
}

class _BasicFunsPageState extends State<BasicFunsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('基础的功能组件'),
      // ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text("Image 图片组件"),
              onPressed: () {
                Navigator.pushNamed(context, '/images');
              },
            ),
            SizedBox(height: 6),
            RaisedButton(
              child: Text("ListView 列表组件"),
              onPressed: () {
                Navigator.pushNamed(context, '/listView');
              },
            ),
            SizedBox(height: 6),
            RaisedButton(
              child: Text("GridView 网格组件"),
              onPressed: () {
                Navigator.pushNamed(context, '/gridView');
              },
            ),
            SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}
