import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/green_user_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  List paymentTypeArray = [
    'assets/images/mastercard.jpg',
    'assets/images/visacard.jpg'
  ];
  List paymentTypeTextArray = ['Mastercard', 'Visa'];
  TextEditingController cardNumber = new TextEditingController();
  int _selectedIndex = 0;

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

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textPaymet(),
          Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: paymentTypeArray.length,
              itemBuilder: (context, index) => _cardType(index),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Card Information",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF1E2661)),
                )),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: LabeledTextField(
              controller: cardNumber,
              label: 'Card Number',
              suffix: false,
              hintText: 'Enter your card number',
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 20),
                  child: LabeledTextField(
                    controller: cardNumber,
                    label: 'Expire Date',
                    suffix: false,
                    hintText: '05/02/2023',
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 20),
                  child: LabeledTextField(
                    controller: cardNumber,
                    label: 'CVV',
                    suffix: false,
                    hintText: 'CVV',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GreenUserButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
              label: 'Pay Now',
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildPopupDialog(context) {
    return new AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      content: new Column(
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
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(SvgIcons.paymentSuccess),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Payment Successful',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Color(0XFF313D56)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'SfUiDisplayLight',color: Color(0XFF313D56))),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _textPaymet() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(
            'Select Payment Method',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0XFF1E2661)),
          ),
        ],
      ),
    );
  }

  Widget _cardType(index) {
    return Container(
      width: 160,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FittedBox(
            child: Container(
                height: 90,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: _selectedIndex != null && _selectedIndex == index
                      ? Border.all(width: 1.5, color: Color(0xFF8AC185))
                      : Border.all(width: 0.50, color: Colors.grey),
                ),
                child: _selectedIndex != null && _selectedIndex == index
                    ? Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                  top: 8.0,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    paymentTypeArray[index],
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 6.0, right: 6.0),
                                child: SvgPicture.asset(
                                  SvgIcons.check,
                                  color: Color(0XFF8AC185),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(paymentTypeTextArray[index]),
                          )
                        ],
                      )
                    : Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                  top: 8.0,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    paymentTypeArray[index],
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 6.0, right: 6.0),
                                child: SvgPicture.asset(SvgIcons.check),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(paymentTypeTextArray[index]),
                          )
                        ],
                      )),
          ),
        ),
      ),
    );
  }
}
