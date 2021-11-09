import 'dart:ui';

import 'package:cloud_spa/screens/therapist/home/home.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:cloud_spa/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class PurchaseTowels extends StatefulWidget {
  @override
  _PurchaseTowelsState createState() => _PurchaseTowelsState();
}

class _PurchaseTowelsState extends State<PurchaseTowels> {
  TextEditingController bank = new TextEditingController();
  TextEditingController branch = new TextEditingController();
  TextEditingController accountType = new TextEditingController();
  TextEditingController accountHolder = new TextEditingController();
  TextEditingController accountNumber = new TextEditingController();
  double x = 0;
  double y = 0;
  double z = 0;
  Widget successAlert(BuildContext context) {
    return Center(
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 48),
        // padding: EdgeInsets.all(18),
        constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 1.8),
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(32), color: Colors.white),
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.cancel_outlined),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SvgPicture.asset(SvgIcons.pendingVerification),
              Text(
                'Bank Details',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff313D56)),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff313D56)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CloudSpaScaffold(
      action: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Center(
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  child: LinearProgressIndicator(
                    value: 1,
                    backgroundColor: Color(0xFFF5F5F5),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '3/3',
                  style: TextStyle(color: Color(0xFFF96289)),
                ),
              ],
            ),
          ),
        )
      ],
      isback: true,
      title: '',
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Text(
                'Bank Details',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 56,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 6),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 8,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      // margin: EdgeInsets.symmetric(horizontal: 67),
                      padding: EdgeInsets.only(
                          top: 32, left: 40, right: 40, bottom: 30),
                      decoration: BoxDecoration(
                          // color: Color(0xFFf5f5f5),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/towel.png'),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Towel Set',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Lorem Ipsum is simply dummy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '\$20.45',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Color(0xffF96289)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(SvgIcons.minus),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(SvgIcons.addT),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff989EAA)),
                    ),
                    Spacer(),
                    Text(
                      '\$20.45',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GradientButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return successAlert(context);
                    },
                  );
                },
                label: 'Next',
              ),
              SizedBox(
                height: 36,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20;
    Path path = Path();
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, radius);
    path.lineTo(size.width - 10, size.height - radius);
    path.quadraticBezierTo(
        size.width - 15, size.height, size.width - 10 - radius, size.height);
    path.lineTo(10 + radius, size.height);
    path.quadraticBezierTo(15, size.height, 10, size.height - radius);
    path.lineTo(0, radius);
    path.quadraticBezierTo(0, 0, radius, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
