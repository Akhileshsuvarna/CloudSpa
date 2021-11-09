import 'package:cloud_spa/screens/therapist/profile/profile_page.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ));
            },
            child: CircleAvatar(
              backgroundImage:  AssetImage('assets/images/therapisticn.png'),
              radius: 25,
            ),
          )
        ],
      ),
    );
  }

  Widget _eranings() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.0),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color(0xFFE5E5E5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                opacity: 0.5,
                child: Text(
                  'My Earnings',
                  style: TextStyle(
                      color: Color(0xFF313D56),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                '\$2,456.71',
                style: TextStyle(
                    color: Color(0xFF313D56),
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Spacer(),
          GradientShortButton(
            label: 'Check now',
          )
        ],
      ),
    );
  }

  Widget _textRow() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      margin: EdgeInsets.only(top: 40.0),
      child: Row(
        children: [
          Text(
            'Upcoming Booking',
            style: TextStyle(
                color: Color(0xFF313D56),
                fontSize: 18,
                fontWeight: FontWeight.w800),
          ),
          Spacer(),
          Text(
            'See all',
            style: TextStyle(
                color: Color(0xFF3F5EFB),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  Widget _upcomingBookings() {
    return Container(
      width: MediaQuery.of(context).size.width -
          MediaQuery.of(context).size.width / 5,
      padding: EdgeInsets.only(left: 24, top: 16),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.05, 1],
                colors: [
                  Color(0xFFF96289),
                  Color(0xFF3F5EFB),
                ],
              ),
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
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    children: [
                      SvgPicture.asset(SvgIcons.distance),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '3.9Km',
                        style: TextStyle(
                            color: Colors.white,
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
                      color: Color(0xFFFFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    SvgPicture.asset(SvgIcons.location),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Stockton, New Hampshire',
                      style: TextStyle(
                        color: Colors.white54,
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
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(SvgIcons.clock),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '12 April, 8:00 AM',
                  style: TextStyle(
                      color: Color(0xFF313D56),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Text(
                  '\$23.75',
                  style: TextStyle(
                      color: Color(0xFFF96289),
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

  Widget _twoButtons() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: Color(0xff3F5EFB).withOpacity(0.3), width: 2),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(SvgIcons.scheduleCalender),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Schedule\ncalendar',
                    style: TextStyle(
                        color: Color(0xFF313D56),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: Color(0xff3F5EFB).withOpacity(0.3), width: 2),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(SvgIcons.managePrice),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Manage\nPrice',
                    style: TextStyle(
                        color: Color(0xFF313D56),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _adBanner() {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset('assets/images/Base.jpg')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _calender(),
              _eranings(),
              _textRow(),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => _upcomingBookings(),
                ),
              ),
              _twoButtons(),
              _adBanner(),
            ],
          ),
        ),
      ),
    );
  }
}
