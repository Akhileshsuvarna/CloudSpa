import 'package:cloud_spa/screens/user/home/profile_home.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/profile_live_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'tab1.dart';
import 'tab2.dart';

class PageBooking extends StatefulWidget {
  @override
  _PageBookingState createState() => _PageBookingState();
}

class _PageBookingState extends State<PageBooking> {
  Widget _header() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile icon.jpg'),
                      //Profile Image
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(
                    color: Color(0xff313D56).withOpacity(0.4),
                    width: 1,
                  ),
                ),
              ),
              ProfileLiveBadge(
                keybool: true,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                    opacity: 0.5,
                    child: Text(
                      'Hi',
                      style: TextStyle(
                          color: Color(0xFF313D56),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )),
                Text(
                  'Jessica Jerry',
                  style: TextStyle(
                      color: Color(0xFF313D56),
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileHome(),
                  ));
            },
            child: Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: Color(0xff313D56).withOpacity(0.4),
                  width: 0.5,
                ),
              ),
              child: SvgPicture.asset(SvgIcons.grid),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Added
      initialIndex: 0, //Added
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(114.0), // here the desired height
            child: AppBar(
              automaticallyImplyLeading: false,
              flexibleSpace: _header(),
              backgroundColor: Colors.white,
              bottom: TabBar(
                labelColor: Colors.black87,
                labelStyle:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                // indic
                //   atorColor: Color(0xFF8AC185),
                tabs: [
                  Tab(
                    text: 'Running',
                  ),
                  Tab(
                    text: 'Compleated',
                  )
                ],
              ),
            )),
        body: TabBarView(
          children: [Tab1(), Tab2()], //Page Redirection
        ),
      ),
    );
  }
}
