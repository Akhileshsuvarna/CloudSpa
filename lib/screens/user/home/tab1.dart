import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_spa/screens/user/home/Booking/bookingDetails.dart';

class Tab1 extends StatefulWidget {
  @override
  _Tab1 createState() => _Tab1();
}

class _Tab1 extends State<Tab1> {

  List<Running> _running= [];


  @override
  void initState() {
    super.initState();
    setState(() {
      _running.add(Running(
          type: 'Aroma Message',
          price: '\$1270.00',
          time: '90 min',
          image: 'assets/images/booking.jpg',
          therapistName: 'Brookylin Simmons',
          bookedDateTime: '12 April,8:00 AM'
        ));
    });
  }


  Widget _runningList(index) {
    return Container(
      width: MediaQuery.of(context).size.width -
          MediaQuery.of(context).size.width / 5,
      padding: EdgeInsets.symmetric (horizontal: 24,vertical: 10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.all ( Radius.circular(12)
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Text(
                      _running[index].type,
                      style: TextStyle(
                          color: Color(0XFF313D56),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Text(
                        _running[index].price,
                      style: TextStyle(
                          color: Color(0XFF8AC185),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),

                SizedBox(
                  height: 5.0,
                ),
                Text(
                    _running[index].time,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage(_running[index].image),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                        _running[index].therapistName,
                      style: TextStyle(
                          color: Color(0XFF313D56),
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Text(
                        _running[index].bookedDateTime,
                      style: TextStyle(
                          color: Color(0XFF989EAA),
                          fontSize: 10,
                         ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
    ])
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookingDetail(),
                      ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height -
                      MediaQuery.of(context).size.height / 3,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: _running.length,
                    itemBuilder: (context, index) => _runningList(index),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Running {
  String type;
  String price;
  String time;
  String image;
  String therapistName;
  String bookedDateTime;

  Running({@required this.type, this.price, this.time, this.image, this.therapistName, this.bookedDateTime});
}