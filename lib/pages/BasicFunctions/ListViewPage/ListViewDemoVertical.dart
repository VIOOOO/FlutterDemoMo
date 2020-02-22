import 'package:flutter/material.dart';

// 垂直基本列表

class ListViewDemoVertical extends StatelessWidget {
// 静态类型 简单列表 网格布局
  static const CITY_NAMES = [
    '北京市',
    '天津市',
    '石家庄市',
    '唐山市',
    '秦皇岛市',
    '邯郸市',
    '邢台市',
    '保定市',
    '张家口市',
    '承德市',
    '沧州市',
    '廊坊市',
    '衡水市',
    '省直辖县',
    '太原市',
    '大同市',
    '阳泉市',
    '长治市',
    '晋城市',
    '朔州市',
    '晋中市',
    '运城市',
    '忻州市',
    '临汾市',
    '吕梁市'
  ];

  const ListViewDemoVertical({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('垂直基本列表 默认'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          // 解决限高
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(height: 20),
            Text('垂直列表1'),
            ListView(
              // 解决限高
              shrinkWrap: true,
              // 解决不滚动
              physics: new NeverScrollableScrollPhysics(),
              children: <Widget>[
                Text("一、垂直列表 左右插入图标、图片"),
                ListTile(
                  leading: Image.network(
                      'https://flutter.cn/images/assets-and-images/icon.png'),
                  title: Text('会Dart'),
                  subtitle: Text(
                      'Flutter是谷歌公司开发的一款开源、免费的移动UI框架，可以让我们快速的在Android和iOS上。'),
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
            SizedBox(height: 20),
            Text('垂直列表2 封装方法实现'),
            ListView(
              // 解决限高
              shrinkWrap: true,
              // 解决不滚动
              physics: new NeverScrollableScrollPhysics(),
              children: _buildList(),
            ),
          ],
        ),
      ),
    );
  }

//  简单列表 网格列表
  List<Widget> _buildList() {
    return CITY_NAMES.map((city) => _item(city)).toList();
  }

  Widget _item(String city) {
    return Container(
      //    width: 160, // 水平滚动样式 默认自身宽度
      height: 80, //网格布局 垂直滚动样式 水平滚动高度需要在外部对整个列表设置高度
      margin: EdgeInsets.only(bottom: 5), // 网格布局 垂直滚动样式
      //    margin: EdgeInsets.only(right: 5), // 水平滚动样式 右间距
      alignment: Alignment.center, // 居中方式
      decoration: BoxDecoration(color: Colors.teal), // 装饰器
      child: Text(
        city,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
