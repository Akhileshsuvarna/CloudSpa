import 'package:flutter/material.dart';

class ProfileLiveBadge extends StatelessWidget {
  final bool keybool;

  const ProfileLiveBadge({Key key, this.keybool}) : super(key: key);
  Widget _badge(){
    return
    Container(
        width: 60,
        height: 60,
        alignment: Alignment.topRight,
        child: Container(
            width: 19,
            height: 19,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Icon(Icons.brightness_1,
                      size: 18.0, color: Colors.white),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Icon(Icons.brightness_1,
                      size: 11.0, color: Color(0XFF8AC185)),
                ),
              ],
            )));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: keybool ? _badge() : Container(),
    );
  }
}
