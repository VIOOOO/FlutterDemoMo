import 'package:flutter/material.dart';

//  水平基本列表 需要在列表外设置高度

class ListViewDemoLevel extends StatelessWidget {
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

  const ListViewDemoLevel({Key key}) : super(key: key);
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
            SizedBox(height: 40),
            // 水平滚动需要 在列表内设置 滚动方向
            Text('水平滚动1'),
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
            SizedBox(height: 40),
            Text('水平滚动2 封装方法实现'),
            Container(
              height: 200, // 水平滚动高度 默认是填满整个区域
              child: ListView(
                // // 解决无限高度问题
                // shrinkWrap: true,
                // // 禁用滑动事件
                // physics: new NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: _buildList(),
              ),
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
      width: 160, // 水平滚动样式 默认自身宽度
      height: 80, //网格布局 垂直滚动样式 水平滚动高度需要在外部对整个列表设置高度
      // margin: EdgeInsets.only(bottom: 5), // 网格布局 垂直滚动样式
      margin: EdgeInsets.only(right: 5), // 水平滚动样式 右间距
      alignment: Alignment.center, // 居中方式
      decoration: BoxDecoration(color: Colors.teal), // 装饰器
      child: Text(
        city,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
