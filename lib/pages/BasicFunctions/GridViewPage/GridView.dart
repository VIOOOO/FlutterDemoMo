import 'package:flutter/material.dart';

// flutter GridView组件 以及动态GridView

class GridViewPage extends StatelessWidget {
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

  const GridViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView组件 网格布局'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 3, // 一行内 几列
          children: _buildList(),
        ),
      ),
    );
  }

  // 网格列表
  List<Widget> _buildList() {
    return CITY_NAMES.map((city) => _item(city)).toList();
  }

  Widget _item(String city) {
    return Container(
      height: 80, //网格布局 
      margin: EdgeInsets.fromLTRB(5, 0, 0, 5), // 网格布局
      alignment: Alignment.center, // 居中方式
      decoration: BoxDecoration(color: Colors.teal), // 装饰器
      child: Text(
        city,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
