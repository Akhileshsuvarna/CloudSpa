import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileHomeLists extends StatelessWidget {
  @override
  final String label;
  final String icon;
  final Function onPressed;

  const ProfileHomeLists({Key key, this.label, this.icon,this.onPressed}) : super(key: key);
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical:15.0),
        child: Container(
          child: Row(children: [
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0XFF8AC185),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: SvgPicture.asset(icon),
            ),
            SizedBox(width:20),
            Text(label,style: TextStyle(fontSize: 20, fontFamily: 'SfUiDisplayLight',fontWeight: FontWeight.w700),),
            Spacer(),
            SvgPicture.asset(
                SvgIcons.forward),
          ],),
        ),
      ),
    );
  }
}
