import 'package:cloud_spa/screens/user/home/Therapistbooking/payment.dart';
import 'package:cloud_spa/widgets/green_user_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';

class BookingOverview extends StatefulWidget {
  @override
  _BookingOverviewState createState() => _BookingOverviewState();
}

class _BookingOverviewState extends State<BookingOverview> {
  TextEditingController cupon = new TextEditingController();

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
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'SfUiDisplayLight',
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
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Cupon code",
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0XFF1E2661)),
                                ),
                              ),
                              LabeledTextField(
                                controller: cupon,
                                label: '',
                                suffix: true,
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 15),
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFF8AC185),
                                    ),
                                    child: Text(
                                      "Apply",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                                hintText: 'Enter cupon code',
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
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Amount",
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
                                  Text(
                                    "Price",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'SfUiDisplayLight',
                                        color: Color(0XFF1E2661)),
                                  ),
                                  Spacer(),
                                  Text(
                                    "10000¥",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0XFF1E2661)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Discount",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'SfUiDisplayLight',
                                        color: Color(0XFF1E2661)),
                                  ),
                                  Spacer(),
                                  Text(
                                    "-5.00¥",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0XFFFFABC8)),),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Transportation charges',
                                  style: TextStyle(
                                      fontSize: 16,  fontWeight: FontWeight.w600,
                                      fontFamily: 'SfUiDisplayLight',
                                      color: Color(0XFF1E2661)),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '10 km * 1000¥',
                                    style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.w600,
                                        fontFamily: 'SfUiDisplayLight',
                                        color: Color(0XFF1E2661)),),
                                  Spacer(),
                                  Text(
                                    "10,000¥",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0XFFFFABC8)),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical:8.0),
                                child: Divider(
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Total",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0XFF1E2661)),
                                  ),
                                  Spacer(),
                                  Text(
                                    "10015.00¥",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0XFF1E2661)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GreenUserButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Payment(),
                              ));
                        },
                        label: 'Checkout',
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
