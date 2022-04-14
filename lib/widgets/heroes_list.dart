// import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

class HeroesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) => Row(
          children: <Widget>[
            Image.network('https://www.simplifiedcoding.net/demos/marvel/captainamerica.jpg'),
            Center(child: Text('Capitan America $index'))
          ],
        )
      ),
    );
  }
}