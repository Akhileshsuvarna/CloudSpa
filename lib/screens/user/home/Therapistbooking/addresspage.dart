import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/green_user_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'addnewaddress.dart';

class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

enum SingingCharacter { lafayette, jefferson }

class _AddAddressState extends State<AddAddress> {
  StateSetter _setState;

  TextEditingController addressLine = new TextEditingController();
  TextEditingController selectDate = new TextEditingController();
  TextEditingController selectTime = new TextEditingController();

  int _value = 1;
  int _selectedIndex = 0;
  int _selectedduration = 0;
  Color color;
  final List<String> returnAddress = <String>[
    '2715 Ash Dr. San Jose, South Dakota 83475',
    '2972 Westheimer Rd. Santa Ana, Illinois 85486'
  ];
  List<String> servicearray = [
    'assets/images/slider3.jpg',
    'assets/images/slider3.jpg',
    'assets/images/slider3.jpg',
    'assets/images/slider3.jpg'
  ];
  List<String> durationarray = ['90 Mins', '120 Mins', '180 Mins'];
  List<String> durationarrayprice = ['10,000¥', '15,000¥', '20,000¥'];

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
        ]),
        backgroundColor: Colors.white,
      ),
      body: body(),
    );
  }

  Widget _buildPopupDialogAddAddress(context) {
    return new AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        content: StatefulBuilder(
          // You need this, notice the parameters below:
          builder: (BuildContext context, StateSetter setState) {
            _setState = setState;
            return new Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                    child: Container(
                      child: SvgPicture.asset(SvgIcons.close),
                    ),
                    onTap: () async {
                      Navigator.of(context).pop();
                    }),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Add Address',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF313D56)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Address',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF040415),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  minLines: 3,
                  controller: addressLine,
                  maxLines: 10,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Add New Address ...',
                    hintStyle: TextStyle(
                        color: Color(0xFF989EAA),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xFFD6D8DD), width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Color(0xFFD6D8DD),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GreenUserButton(
                  onPressed: () async {
                    setState(() {
                      returnAddress.add(addressLine.text);
                    });
                    print(returnAddress.last);
                    Navigator.of(context).pop();
                  },
                  label: 'Add',
                )
              ],
            );
          },
        ));
  }

  body() {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              'Booking Details',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Color(0xFF313D56),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              '''Select address and booking details from below 
to make appointment''',
              textAlign: TextAlign.center,
              maxLines: 15,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'SfUiDisplayLight',
                  color: Color(0xFF313D56)),
            ),
            _addaddresstext(),
            Column(
              children: <Widget>[
                for (int i = 0; i <= returnAddress.length - 1; i++)
                  ListTile(
                    title: Text(
                      returnAddress[i],
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: i == 5 ? Colors.black38 : Colors.black),
                    ),
                    leading: Container(
                      width: 80,
                      child: Row(
                        children: [
                          Radio(
                            value: i,
                            groupValue: _value,
                            activeColor: Color(0xFF8AC185),
                            onChanged: i == 5
                                ? null
                                : (int value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color(0XFFF5F5F5),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(SvgIcons.addressMap),
                              )),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
            addanother(),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.topLeft,
              child: Text(
                'Date & Time',
                style: TextStyle(
                  color: Color(0xFF313D56),
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: LabeledTextField(
                    controller: selectDate,
                    label: 'Date',
                    suffix: true,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(SvgIcons.calendar),
                    ),
                    hintText: 'Select date',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: LabeledTextField(
                    controller: selectTime,
                    label: 'Time',
                    suffix: true,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(SvgIcons.timeSearch),
                    ),
                    hintText: 'Select time',
                  ),
                ),
              ]),
            ),
            _textRowmassage(),
            Container(
              height: 146,
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: servicearray.length,
                itemBuilder: (context, index) => _massageservice(index),
              ),
            ),
            _textDuration(),
            Container(
              height: 135,
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: durationarray.length,
                itemBuilder: (context, index) => _massageduration(index),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GreenUserButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddNewAddress(),
                      ));
                },
                label: 'Next',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _addaddresstext() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      margin: EdgeInsets.only(top: 40.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Address',
                style: TextStyle(
                  color: Color(0xFF313D56),
                  fontSize: 18,
                ),
              ),
              Spacer(),
              Text(
                'Delete',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'SfUiDisplayLight',
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _textRowmassage() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Text(
            'Select services',
            style: TextStyle(
              color: Color(0xFF313D56),
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget addanother() {
    return GestureDetector(
        onTap: () {
//          Navigator.of(context).pop();
          showDialog(
            context: context,
            builder: (BuildContext context) =>
                _buildPopupDialogAddAddress(context),
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Add another Address',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.w100),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(SvgIcons.add),
                ],
              )
            ],
          ),
        ));
  }

  Widget _massageduration(index) {
    return Container(
      color: Colors.white,
//      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        clipBehavior: Clip.antiAlias,
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selectedduration = index;
            });
          },
          child: FittedBox(
            child: Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: Colors.grey.withOpacity(0.1),
                  border:
                  _selectedduration != null && _selectedduration == index
                      ? Border.all(color: Color(0xFF8AC185), width: 1)
                      : Border.all(color: Colors.transparent),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: _selectedduration != null &&
                          _selectedduration == index
                          ? Text(
                        durationarray[index],
                        style: TextStyle(
                            color: Color(0XFF8AC185), fontSize: 15),
                      )
                          : Text(
                        durationarray[index],
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(durationarrayprice[index],
                          style: TextStyle(
                              color: Color(0XFF7768D8), fontSize: 18)),
                    )
                  ],
                )),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Widget _textDuration() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Text(
            'Duration',
            style: TextStyle(
              color: Color(0xFF313D56),
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget _massageservice(index) {
    return Material(
      child: Container(
          color: Colors.white,
//      padding: EdgeInsets.symmetric(horizontal: 24),
          child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              clipBehavior: Clip.antiAlias,
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: FittedBox(
                      child: Stack(alignment: Alignment.center, children: [
                        ColorFiltered(
                          colorFilter: _selectedIndex != null &&
                              _selectedIndex == index
                              ? ColorFilter.mode(Color(0XFF8AC185), BlendMode.src)
                              : ColorFilter.mode(Colors.blueGrey.withOpacity(0.8),
                              BlendMode.color),
                          child: FittedBox(
                            child: Image.asset(
                              servicearray[index],
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            'Thai Message',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          fit: BoxFit.fill,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 60, left: 60),
                          child: _selectedIndex != null && _selectedIndex == index
                              ? Container(child: SvgPicture.asset(SvgIcons.check))
                              : Container(),
                        ),
                      ]))))),
    );
  }
}
