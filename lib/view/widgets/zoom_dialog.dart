import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ZoomImageDialog extends ModalRoute<void> {
  @override
  Duration get transitionDuration => Duration(milliseconds: 100);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.5);

  @override
  String get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    // This makes sure that text and other content follows the material style
    return Material(
      type: MaterialType.transparency,
      // make sure that the overlay content is not cut off
      child: SafeArea(
        child: Container(
          child: _buildOverlayContent(context),
          color: Colors.black54,
        ),
      ),
    );
  }

  Widget _buildOverlayContent(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Center(
            child: Container(
              height: screenHeight * 0.6,
              child: Image.network(
                "",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          right: 10.0,
          top: 10.0,
          child: IconButton(
            icon: Icon(
              Icons.close,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // You can add your own animations for the overlay content
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }
}
