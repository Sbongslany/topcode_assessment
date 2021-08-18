// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDescription extends StatelessWidget {
  String name;
  TextDescription({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name ?? '',
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: 'Avenir',
        fontSize: 20,
        color: Colors.blue,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
