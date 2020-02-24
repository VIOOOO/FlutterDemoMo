import 'package:flutter/material.dart';

// 多级展开列表 手风琴
class ListViewDemoAccordion extends StatelessWidget {
// 多级 手风琴 ExpansionTile 多级展开列表
  static const CITY_NAMES_EX = {
    '河北省': [
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
      '衡水市'
    ],
    '山西省': [
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
    ],
    '辽宁省': [
      '沈阳市',
      '大连市',
      '鞍山市',
      '抚顺市',
      '本溪市',
      '丹东市',
      '锦州市',
      '营口市',
      '阜新市',
      '辽阳市',
      '盘锦市',
      '铁岭市',
      '朝阳市',
      '葫芦岛市'
    ],
    '吉林省': ['长春市', '吉林市', '四平市', '辽源市', '通化市', '白山市', '松原市', '白城市', '延边朝鲜族自治州'],
    '河南省': [
      '郑州市',
      '开封市',
      '洛阳市',
      '平顶山市',
      '安阳市',
      '鹤壁市',
      '新乡市',
      '焦作市',
      '濮阳市',
      '许昌市',
      '漯河市',
      '三门峡市',
      '南阳市',
      '商丘市',
      '信阳市',
      '周口市',
      '驻马店市',
      '济源市'
    ],
    '江苏省': [
      '南京市',
      '无锡市',
      '徐州市',
      '常州市',
      '苏州市',
      '南通市',
      '连云港市',
      '淮安市',
      '盐城市',
      '扬州市',
      '镇江市',
      '泰州市',
      '宿迁市'
    ],
    '浙江省': [
      '杭州市',
      '宁波市',
      '温州市',
      '嘉兴市',
      '湖州市',
      '绍兴市',
      '金华市',
      '衢州市',
      '舟山市',
      '台州市',
      '丽水市'
    ],
    '安徽省': [
      '合肥市',
      '芜湖市',
      '蚌埠市',
      '淮南市',
      '马鞍山市',
      '淮北市',
      '铜陵市',
      '安庆市',
      '黄山市',
      '滁州市',
      '阜阳市',
      '宿州市',
      '巢湖市',
      '六安市',
      '亳州市',
      '池州市',
      '宣城市'
    ],
    '福建省': ['福州市', '厦门市', '莆田市', '三明市', '泉州市', '漳州市', '南平市', '龙岩市', '宁德市']
  };

  const ListViewDemoAccordion({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('多级展开列表 手风琴'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          // 解决无限高度问题
          shrinkWrap: true,
          children: <Widget>[
            ListView(
              // 解决无限高度问题
              shrinkWrap: true,
              // 禁用滑动事件
              physics: new NeverScrollableScrollPhysics(),
              children: _buildList_ex(),
            ),
          ],
        ),
      ),
    );
  }

  // 多级展开列表
  List<Widget> _buildList_ex() {
    List<Widget> widgets = [];
    CITY_NAMES_EX.keys.forEach((key) {
      widgets.add(_item(key, CITY_NAMES_EX[key]));
    });
    return widgets;
  }

  Widget _item(String city, List<String> subCities) {
    return ExpansionTile(
      title: Text(
        city,
        style: TextStyle(color: Colors.black54, fontSize: 20),
      ),
      children: subCities.map((subCity) => _buildSub(subCity)).toList(),
    );
  }

  Widget _buildSub(String subCity) {
    return FractionallySizedBox(
      // 让宽度撑满  实用可伸缩组件
      widthFactor: 1, // 宽度撑满
      child: Container(
        height: 50,
        margin: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(color: Colors.lightBlueAccent),
        child: Text(subCity),
      ),
    );
  }
}
