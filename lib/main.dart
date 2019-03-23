import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/draw_demo.dart';
import 'demo/BottomNavigationBarDemo.dart';
import 'demo/view_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.pink,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white12),
        home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,//tab数量
      child: Scaffold(
          drawer: DrawDemo(),//侧边栏
          bottomNavigationBar: BottomNavigationBarDemo(),
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            elevation: 8.0,
            title: Text(
              'Hello',
              style: TextStyle(fontSize: 25.0),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: () => debugPrint('Search Button is pressed')),
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black26, //非选颜色
              indicatorColor: Colors.black54, //已选下划线颜色
              indicatorSize: TabBarIndicatorSize.label, //已选下划线长度
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.local_florist),
                ),
                Tab(
                  icon: Icon(Icons.change_history),
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              //Icon(Icons.ac_unit,size:250.0),
              ViewDemo(),
              ListViewDemo(),
            ],
          )),
    );
  }
}
