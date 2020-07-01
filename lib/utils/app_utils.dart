import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppUtils {
  static void showSnackBar(String str, ScaffoldState context,
      {color = Colors.teal}) {
    context.showSnackBar(SnackBar(
      content: Text(str),
      backgroundColor: color,
    ));
  }

  static void callUrlLaunch({String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[Text("Hello")],
          );
        });
  }

  static void showOpenDialog(BuildContext context,
      {String title, Widget okBtn, Widget cancelBtn}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(title),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    okBtn,
                    cancelBtn,
                  ],
                )
              ],
            ),
          );
        });
  }
}
