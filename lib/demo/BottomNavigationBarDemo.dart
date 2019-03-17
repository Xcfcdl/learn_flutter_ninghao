import 'package:flutter/Material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  _BottomNavigationBarDemoState createState() => _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _onTapHandler(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.black,
            currentIndex: _currentIndex,
            onTap: _onTapHandler,
            items: [
              BottomNavigationBarItem(
                //backgroundColor: Colors.amber,
                icon: Icon(Icons.explore),
                title: Text('Explore')
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                title: Text('History')
                
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                title: Text('List')
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('My')
              ),
            ],
          );
  }
}