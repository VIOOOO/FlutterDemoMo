import 'package:flutter/material.dart';

// Flutter 图片组件Image 、本地图片、远程图片、图片剪切

class ImagesPage extends StatefulWidget {
  ImagesPage({Key key}) : super(key: key);

  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('图片组件Image'),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("引入本地图片1 Image.asset"),
                  Container(
                    // 引入本地图片
                    child: Image.asset(
                      'images/a.jpeg',
                      fit: BoxFit.cover,
                    ),
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("引入本地图片2-圆形图片 ClipOval"),
                  Container(
                    // 引入本地图片
                    // 圆形图片
                    child: ClipOval(
                      child: Image.asset(
                        'images/a.jpeg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("引入网络图片Image.network-圆形图片2 ClipOval"),
                  Container(
                    // 引入网络图片
                    // 圆形图片2
                    child: ClipOval(
                      child: Image.network(
                        'https://ossweb-img.qq.com/upload/adw/image/20200120/68498e64124410e35d8c4f1e85a9a790.jpeg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("引入网络图片-圆形图片1 DecorationImage"),
                  Container(
                    // 引入网络图片
                    // // 圆形图片1
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(150),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://ossweb-img.qq.com/upload/adw/image/20200120/68498e64124410e35d8c4f1e85a9a790.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("引入网络图片-普通"),
                  Container(
                    // 普通引入网络图片
                    child: Image.network(
                      'https://ossweb-img.qq.com/upload/adw/image/20200120/68498e64124410e35d8c4f1e85a9a790.jpeg',
                      //  fit: BoxFit.cover,
                      // alignment: Alignment.bottomRight,

                      // color: Colors.blue,
                      // colorBlendMode: BlendMode.screen,

                      // repeat:ImageRepeat.repeat
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
