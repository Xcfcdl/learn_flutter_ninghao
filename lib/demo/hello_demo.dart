import 'package:flutter/Material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello',
        style: TextStyle(
          fontSize: 50.0,
          color: Colors.yellow
        ),
      ),
      
    );
  }
}