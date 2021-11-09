import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  const LabeledTextField({
    Key key,
    @required this.controller,
    @required this.label,
    this.suffix,
    this.suffixIcon,
    this.onChanged,
    this.hintText = '',
    this.keyboardType = TextInputType.text,
    this.prefix = false,
    this.prefixWidget,
    this.minLines = 1,
  }) : super(key: key);
  final String label;
  final TextEditingController controller;
  final bool suffix;
  final suffixIcon;
  final bool prefix;
  final prefixWidget;
  final onChanged;
  final String hintText;
  final keyboardType;
  final int minLines;

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
        TextFormField(
          maxLines: 10,
          minLines: minLines,
          scrollPadding: EdgeInsets.only(bottom: 125),
          keyboardType: keyboardType,
          onChanged: onChanged,
          controller: controller,
          style: TextStyle(color: Color(0xFF050A30), fontSize: 16),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                color: Color(0xFF989EAA),
                fontSize: 16,
                fontWeight: FontWeight.w300),
            filled: true,
            fillColor: Colors.white,
            focusColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xFFD6D8DD), width: 2.0),
              borderRadius: BorderRadius.circular(15.0),
            ),
            suffixIcon: suffix ? suffixIcon : Text(''),
            prefix: prefix ? prefixWidget : Text(''),
            isDense: true,
            // prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Color(0xFFD6D8DD),
                )),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    );
  }
}
