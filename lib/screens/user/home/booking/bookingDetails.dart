import 'package:cloud_spa/screens/user/home/Therapistbooking/payment.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/green_user_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../home_page.dart';

class BookingDetail extends StatefulWidget {
  @override
  _BookingDetailState createState() => _BookingDetailState();
}

class _BookingDetailState extends State<BookingDetail> {
  StateSetter _setState;
  double rating = 4.0;
  bool arrived = false;
  TextEditingController cupon = new TextEditingController();

  Widget _buildPopupDialogRate(context) {
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
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(SvgIcons.rate),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Rate & Review',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF313D56)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: SmoothStarRating(
                    color: Color(0XFFF2994A),
                    allowHalfRating: false,
                    borderColor: Color(0XFF4F4F8),
                    size: 35,
                    spacing: 0.0,
                    onRatingChanged: (v) {
                      rating = v;
                      setState(() {
                        print(rating);
                      });
                    },
                    rating: rating,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Feedback',
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
                  maxLines: 10,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Write your feedback ...',
                    hintStyle: TextStyle(
                        color: Color(0xFF989EAA),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Color(0xFFD6D8DD), width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
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
                  onPressed: ()async {
                    Navigator.of(context).pop();
                    showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          _buildPopupDialogSucess(context),
                    );
                  },
                  label: 'Submit',
                )
              ],
            );
          },
        ));
  }

  Widget _buildPopupDialogSucess(context) {
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
            child: SvgPicture.asset(SvgIcons.rateSucessfull),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Successful',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF313D56)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
                'Review has been successfully added to the Therapist. Thanks for adding it.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'SfUiDisplayLight',
                    color: Color(0XFF313D56))),
          ),
          SizedBox(
            height: 20,
          ),
          GreenUserButton(
            onPressed: () {
              Navigator.of(context).pop();
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                    builder: (context) => HomeUserPage(),
//                  ));
            },
            label: 'Go Home',
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                          AssetImage("assets/images/bookingOverview.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 2.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: Colors.white,
                          gradient: LinearGradient(
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.8),
                              ],
                              stops: [
                                0.0,
                                1.0
                              ])),
                    ),
                  ],
                ),
              ],
            )),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: body())
      ],
    );
  }

  Widget body() {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Thai Message",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "90 Mins",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                            elevation: 70,
                            shadowColor: Color(0XFFE5E5E5).withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Information",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF1E2661)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has''',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black26),
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        Card(
                            elevation: 70,
                            shadowColor: Color(0XFFE5E5E5).withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Therapist",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF1E2661)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 45,
                                        height: 45,
                                        padding: EdgeInsets.all(12.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/afsana.jpg'),
                                              //Profile Image
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.circular(50.0),
                                          border: Border.all(
                                            color:
                                            Color(0xff313D56).withOpacity(0.4),
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Afsana Jerry",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'SfUiDisplayLight',
                                            color: Color(0XFF1E2661)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                        Card(
                            elevation: 70,
                            shadowColor: Color(0XFFE5E5E5).withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Date, Time & Address",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF1E2661)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Text(
                                              "Date",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'SfUiDisplayLight',
                                                  color: Color(0XFF1E2661)),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Text(
                                              "Time",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'SfUiDisplayLight',
                                                  color: Color(0XFF1E2661)),
                                            ),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Text(
                                              "25 April",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'SfUiDisplayLight',
                                                  color: Color(0XFF1E2661)),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Text(
                                              "10:00 AM",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0XFF1E2661)),
                                            ),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Address",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'SfUiDisplayLight',
                                          color: Color(0XFF1E2661)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    '''2972 Westheimer Rd. Santa Ana, Illinois 85486 ''',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'SfUiDisplayLight',
                                        color: Color(0XFF1E2661)),
                                  ),
                                ],
                              ),
                            )),
                        Card(
                            elevation: 70,
                            shadowColor: Color(0XFFE5E5E5).withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Duration",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF1E2661)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Text(
                                              "90 Mins",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'SfUiDisplayLight',
                                                  color: Color(0XFF1E2661)),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Text(
                                              "\$500",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'SfUiDisplayLight',
                                                  color: Color(0XFF8AC185)),
                                            ),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                        Card(
                            elevation: 30,
                            shadowColor: Color(0XFFE5E5E5).withOpacity(0.2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Booking Status",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF1E2661)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Scheduled",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'SfUiDisplayLight',
                                          color: Color(0XFF8AC185)),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFF8AC185),
                                    ),
                                    child: Text(
                                      'Extend',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          _buildPopupDialogRate(context),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xFF8AC185), width: 1)),
                                    child: Text(
                                      'Review',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF8AC185),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                            child: arrived
                                ? GreenUserButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Payment(),
                                    ));
                              },
                              label: 'Arrived',
                            )
                                : InkWell(
//                          onTap:(){
//                            Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                  builder: (context) => Payment(),
//                                ));
//                          },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xFFF5F5F5),
                                ),
                                child: Text(
                                  'Not Arrived',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color:
                                      Color(0XFF989EAA).withOpacity(0.8),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
