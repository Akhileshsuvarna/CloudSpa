import 'package:cloud_spa/screens/therapist/bookings/bookings.dart';
import 'package:cloud_spa/screens/therapist/home/home_page.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:curved_navigation_bar_custom/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> body = [
    HomePage(),
    Bookings(),
    HomePage(),
    Bookings(),
    HomePage(),
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFFF5F5F5),
        color: Colors.white,
        items: <Widget>[
          SvgPicture.asset(
            SvgIcons.home,
          ),
          SvgPicture.asset(SvgIcons.slide),
          SvgPicture.asset(SvgIcons.creditCard),
          SvgPicture.asset(SvgIcons.calendar),
          SvgPicture.asset(SvgIcons.bell),
        ],
        itemsSelected: <Widget>[
          SvgPicture.asset(
            SvgIcons.homeWhite,
          ),
          SvgPicture.asset(SvgIcons.slideWhite),
          SvgPicture.asset(SvgIcons.creditCardWhite),
          SvgPicture.asset(SvgIcons.calendarWhite),
          SvgPicture.asset(SvgIcons.bellWhite),
        ],
        itemsName: <String>[
          'Home',
          'Bookings',
          'Earning',
          'Calander',
          'Notification',
        ],
        onTap: (index) {
          setState(() {
            selected = index;
          });
        },
      ),
      body: body[selected],
    );
  }
}
