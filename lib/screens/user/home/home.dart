import 'package:cloud_spa/screens/user/home/home_page.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'booking_page.dart';
import 'notification_page.dart';
import 'therapist_page.dart';

class HomeUser extends StatefulWidget {
  @override
  _HomeUser createState() => _HomeUser();
}

class _HomeUser extends State<HomeUser> {
  final HomeUserPage _home = new HomeUserPage();
  final PageBooking _booking = new PageBooking();
  final PageTherapist _therapist = new PageTherapist();
  final PageNotification _notification = new PageNotification();
  Widget _beginPage = new HomeUserPage();

  Widget _pageRedirect(int page) {
    //Page Direction
    switch (page) {
      case 0:
        return _home;
        break;
      case 1:
        return _booking;
        break;
      case 2:
        return _therapist;
        break;
      case 3:
        return _notification;
        break;
      default:
        return _home;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.white,
        items: <Widget>[
          SvgPicture.asset(
            SvgIcons.search,
          ),
          SvgPicture.asset(SvgIcons.booking),
          SvgPicture.asset(SvgIcons.therapist),
          SvgPicture.asset(SvgIcons.notify),
        ],
        itemsSelected: <Widget>[
          SvgPicture.asset(
            SvgIcons.searchWhite,
          ),
          SvgPicture.asset(SvgIcons.bookingWhite),
          SvgPicture.asset(SvgIcons.therapistWhite),
          SvgPicture.asset(SvgIcons.notifyWhite),
        ],
        itemsName: <String>[
          'Search',
          'Bookings',
          'Therapist',
          'Notification',
        ],
        onTap: (index) {
//          debugPrint('current click $index');  // Index
          setState(() {
            _beginPage = _pageRedirect(index);
          });

          //Handle button tap
        },
      ),
      body: Container(
        child: _beginPage,
      ),
    );
  }
}
