import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/green_user_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bookingoverview.dart';

class AddNewAddress extends StatefulWidget {
  @override
  _AddNewAddressState createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  TextEditingController title = new TextEditingController();
  TextEditingController address = new TextEditingController();
  List liststateitems = ["Karntaka", "kerala", "UP", "Kashmir", "Gujrath"];
  List listdivisionitems = ["div1", "div2", "div3", "div4", "div5"];
  List listcityitems = ["Manglore", "Udupi", "Manipal", "B.c road", "Sulia"];
  String _chosenstateValue;
  String _chosendivValue;
  String _chosencityValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        elevation: 0,
        title: Row(children: <Widget>[
          new SvgPicture.asset(SvgIcons.back),
          new Container(
              margin: const EdgeInsets.only(left: 10),
              child: new Text(
                'Back',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SfUiDisplayLight',
                    fontWeight: FontWeight.w400),
              )),
          new Container(
              alignment: AlignmentDirectional.center,
              child: new Text(
                '',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SfUiDisplayLight',
                    fontWeight: FontWeight.w600),
              )),
        ]),
        backgroundColor: Colors.white,
      ),
      body: body(),
    );
  }

  Widget body() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            LabeledTextField(
              controller: title,
              label: 'Title Name',
              suffix: false,
              hintText: 'Enter title name',
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Division",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF040415),
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xFFD6D8DD), width: 1)),
                  child: DropdownButton(
                    hint: Text("Select division"),
                    dropdownColor: Colors.white,
                    icon: SvgPicture.asset(SvgIcons.dropArrow),
                    iconSize: 36,
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                        color: Color(0xFF989EAA),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                    value: _chosendivValue,
                    onChanged: (newvalue) {
                      setState(() {
                        _chosendivValue = newvalue;
                      });
                    },
                    items: listdivisionitems.map((valueitem) {
                      return DropdownMenuItem(
                        value: valueitem,
                        child: Text(valueitem),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "state",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF040415),
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xFFD6D8DD), width: 1)),
                  child: DropdownButton(
                    hint: Text("select state"),
                    dropdownColor: Colors.white,
                    icon: SvgPicture.asset(SvgIcons.dropArrow),
                    iconSize: 36,
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                        color: Color(0xFF989EAA),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                    value: _chosenstateValue,
                    onChanged: (newvalue) {
                      setState(() {
                        _chosenstateValue = newvalue;
                      });
                    },
                    items: liststateitems.map((valueitem) {
                      return DropdownMenuItem(
                        value: valueitem,
                        child: Text(valueitem),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "City",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF040415),
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xFFD6D8DD), width: 1)),
                  child: DropdownButton(
                    hint: Text("Select city"),
                    dropdownColor: Colors.white,
                    icon: SvgPicture.asset(SvgIcons.dropArrow),
                    iconSize: 36,
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                        color: Color(0xFF989EAA),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                    value: _chosencityValue,
                    onChanged: (newvalue) {
                      setState(() {
                        _chosencityValue = newvalue;
                      });
                    },
                    items: listcityitems.map((valueitem) {
                      return DropdownMenuItem(
                        value: valueitem,
                        child: Text(valueitem),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            LabeledTextField(
              controller: address,
              label: 'Address',
              suffix: false,
              hintText: 'Enter address',
            ),
            SizedBox(
              height: 20,
            ),
            Container(
//        padding: const EdgeInsets.all(15.0),
              child: GreenUserButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookingOverview(),
                      ));
                },
                label: 'Update',
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        ));
  }
}
