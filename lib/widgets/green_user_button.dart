import 'package:cloud_spa/utlity_components/colors.dart';
import 'package:flutter/material.dart';

class GreenUserButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  const GreenUserButton({Key key, this.label, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
         color: colors.userPrimaryColor,
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
