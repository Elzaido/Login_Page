import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveEndicator extends StatelessWidget {
  String? os;

  AdaptiveEndicator({this.os});

  @override
  Widget build(BuildContext context) {
    if (os == 'android') {
      return CircularProgressIndicator();
    } else {
      return CupertinoActivityIndicator();
    }
  }
}
