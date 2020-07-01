import 'package:flutter/material.dart';

class LostConnectionWidget extends StatelessWidget {
  final String text;
  final Color backGroundColor;

  LostConnectionWidget({this.text, this.backGroundColor = Colors.white});
  @override
  Widget build(BuildContext context) {
    return (new Container(
//        padding: EdgeInsets.symmetric(vertical: 4.0),
        color: backGroundColor, //Color.fromRGBO(249, 161, 19,1.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new SizedBox(
              width: 25.0,
              height: 21.0,

              child: Image.asset('assets/icon/spinner.gif'),
              // new CircularProgressIndicator( strokeWidth:2.0,valueColor: new AlwaysStoppedAnimation<Color>(Colors.black12),),
            ),
            Text(
              this.text,
              style: TextStyle(color: Colors.white, fontSize: 10),
            )
          ],
        )));
  }
}
