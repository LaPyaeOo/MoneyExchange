import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
            height: 50,
            width: 50,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      child: Image.asset(
                        "assets/images/my_logo.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    child: CircularProgressIndicator(
                      strokeWidth: 0.9,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ],
            )),
      ),
    );
  }
}
