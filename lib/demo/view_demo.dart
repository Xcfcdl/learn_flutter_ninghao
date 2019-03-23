import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(posts[index].author)
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('Pages:$currentPage'),
      controller: PageController(
          initialPage: 1, keepPage: false, viewportFraction: 0.85),
      children: <Widget>[
        Container(
          color: Colors.grey,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'One',
            style: Theme.of(context).textTheme.display1,
          ),
        ),
        Container(
          color: Colors.blueGrey,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Two',
            style: Theme.of(context).textTheme.display1,
          ),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Three',
            style: Theme.of(context).textTheme.display1,
          ),
        ),
      ],
    );
  }
}
