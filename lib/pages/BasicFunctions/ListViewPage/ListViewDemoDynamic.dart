import 'package:flutter/material.dart';
import 'res/listData.dart';

// 动态列表

class ListViewDemoDynamic extends StatefulWidget {
  ListViewDemoDynamic({Key key}) : super(key: key);

  @override
  _ListViewDemoDynamicState createState() => _ListViewDemoDynamicState();
}

class _ListViewDemoDynamicState extends State<ListViewDemoDynamic> {
// 动态列表4 ListView.Builder() 循环遍历新增的数据
  Widget _getListData(context, index) {
    return ListTile(
      leading: Image.network(listData[index]["imageUrl"]),
      subtitle: Text(listData[index]["author"]),
      title: Text(listData[index]["title"]),
    );
  }

// 动态列表3 ListView.Builder()
  List list = new List();
  // 构造函数
  _ListViewDemoDynamicState() {
    for (var i = 0; i < 20; i++) {
      this.list.add(ListTile(
            title: Text('这是第$i列表元素'),
          ));
    }
  }

  // 动态列表2 自定义方法
  List<Widget> _getData2() {
    var tempList = listData.map((value) {
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    });
    return tempList.toList();
  }

  // 动态列表1 自定义方法
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (var i = 0; i <= 20; i++) {
      list.add(
        ListTile(
          title: Text('这是第${i}个列表'),
        ),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动态列表'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          // 解决限高
          shrinkWrap: true,
          children: <Widget>[
            Text('动态列表几种不同方法实现'),
            SizedBox(height: 60),
            Text('动态列表4'),
            ListView.builder(
              // 解决限高
              shrinkWrap: true,
              // 解决不滚动
              physics: new NeverScrollableScrollPhysics(),
              itemCount: listData.length, // 列表长度 必须
              itemBuilder: this._getListData, // 不需要写() ,表示赋值。加()表示执行方法
            ),
            SizedBox(height: 60),
            Text('动态列表3'),
            ListView.builder(
              // 解决限高
              shrinkWrap: true,
              // 解决不滚动
              physics: new NeverScrollableScrollPhysics(),
              itemCount: this.list.length, // 列表长度 必须
              itemBuilder: (context, index) {
                return this.list[index];
              },
            ),
            SizedBox(height: 60),
            Text('动态列表2 自定义方法'),
            ListView(
              // 解决限高
              shrinkWrap: true,
              // 解决不滚动
              physics: new NeverScrollableScrollPhysics(),
              children: this._getData2(),
            ),
            SizedBox(height: 60),
            Text('动态列表1 自定义方法'),
            ListView(
              // 解决限高
              shrinkWrap: true,
              // 解决不滚动
              physics: new NeverScrollableScrollPhysics(),
              children: this._getData(),
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
