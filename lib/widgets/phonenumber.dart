import 'package:flutter/material.dart';

class PhoneNumberinput extends StatelessWidget {
  const PhoneNumberinput({
    Key key,
    @required this.controller,
    @required this.label,
    this.suffix,
    this.suffixIcon,
    this.onChanged,
    this.phonenumber,
    this.hintText = '',
    this.keyboardType = TextInputType.text,
  }) : super(key: key);
  final String label;
  final TextEditingController controller;
  final bool suffix;
  final suffixIcon;
  final onChanged;
  final phonenumber;
  final String hintText;
  final keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 14,
              color: Color(0xFF040415),
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          padding:  const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFD6D8DD),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: phonenumber,
        ),

      ],
    );
  }
}
