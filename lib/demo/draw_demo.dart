import 'package:flutter/Material.dart';

class DrawDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      color: Colors.white,
      padding: EdgeInsets.all(8.0),
      child: ListView(
        padding: EdgeInsets.all(1.0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Tonny',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  accountEmail: Text(
                    '74@163.com',
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2623125781,3450377525&fm=26&gp=0.jpg'),
                  ),
                  //child: Text('Header'.toUpperCase()),
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://ss3.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=8abbeb860d3b5bb5a1d726fe06d2d523/a6efce1b9d16fdfa0dde2cc3ba8f8c5494ee7b69.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.8), BlendMode.hardLight)),
                ),),
                ListTile(
                  title: Text('Messages', textAlign: TextAlign.left),
                  trailing:
                      Icon(Icons.message, color: Colors.black12, size: 22.0),
                ),
                ListTile(
                  title: Text('Settings', textAlign: TextAlign.left),
                  trailing:
                      Icon(Icons.settings, color: Colors.black12, size: 22.0),
                ),
              ],
            ),
          );
  }
}