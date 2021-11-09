import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Bookings extends StatefulWidget {
  const Bookings({Key key}) : super(key: key);

  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  Widget _calender() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 25.0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                color: Color(0xff313D56).withOpacity(0.4),
                width: 1,
              ),
            ),
            child: SvgPicture.asset(SvgIcons.calendar),
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                  opacity: 0.5,
                  child: Text(
                    'Monday',
                    style: TextStyle(
                        color: Color(0xFF313D56),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )),
              Text(
                '25 October',
                style: TextStyle(
                    color: Color(0xFF313D56),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Spacer(),
          CircleAvatar(
            radius: 25,
          )
        ],
      ),
    );
  }

  Widget _upcomingBookings() {
    return Container(
      width: MediaQuery.of(context).size.width -
          MediaQuery.of(context).size.width / 5,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 69,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                      color: Color(0xFF313D56).withOpacity(0.15),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    children: [
                      SvgPicture.asset(SvgIcons.distanceBook),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '3.9Km',
                        style: TextStyle(
                            color: Color(0xFF313D56),
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  '2 Hours Hit Message',
                  style: TextStyle(
                      color: Color(0xFF313D56),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    SvgPicture.asset(SvgIcons.locationBook),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Stockton, New Hampshire',
                      style: TextStyle(
                        color: Color(0xFF313D56).withOpacity(0.54),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 8, bottom: 16, right: 16, left: 16),
            decoration: BoxDecoration(
              color: Color(0xFFE5E5E5),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 2],
                colors: [
                  Color(0xFFF96289),
                  Color(0xFF3F5EFB),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(SvgIcons.clockBook),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '12 April, 8:00 AM',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Text(
                  '\$23.75',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              _calender(),
              Container(
                constraints: BoxConstraints.expand(height: 50),
                child: TabBar(
                  labelColor: Color(0xFF313D56),
                  tabs: [
                    Tab(
                      text: "Scheduled",
                    ),
                    Tab(text: "Completed"),
                  ],
                  labelStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    Container(
                      child: ListView.builder(
                        itemBuilder: (context, index) => _upcomingBookings(),
                      ),
                    ),
                    Container(
                      child: ListView.builder(
                        itemBuilder: (context, index) => _upcomingBookings(),
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
