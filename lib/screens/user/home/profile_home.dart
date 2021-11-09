import 'dart:io';

import 'package:cloud_spa/screens/user/home/profile/FavouriteTherapist.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/profile_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import 'profile/about.dart';
import 'profile/contactUs_page.dart';
import 'profile/offer_page.dart';
import 'profile/profile_setting.dart';
import 'profile/setting_page.dart';

class ProfileHome extends StatefulWidget {
  @override
  _ProfileHomeState createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  _imgFromCamera() async {
    final pickedFile = await _picker.getImage(
      source: ImageSource.camera,
      imageQuality: 50,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  _imgFromGallery() async {
    final pickedFile = await _picker.getImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

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
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Center(
                    child: _imageFile != null
                        ? Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80.0),
                              color: Colors.white,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: FileImage(
                                    File(_imageFile.path),
                                  )),
                            ),
                          )
                        : Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80.0),
                              color: Colors.white,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/profile.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          )),
                Center(
                    child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.width / 2.5,
                        alignment: Alignment.bottomRight,
                        child: Container(
                            width: MediaQuery.of(context).size.width / 6.5,
                            height: MediaQuery.of(context).size.width / 6.5,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Icon(Icons.brightness_1,
                                      size: 55.0, color: Colors.white),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    _showPicker(context);
                                    // Image Picker
                                  },
                                  child: Container(
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Icon(Icons.brightness_1,
                                              size: 45.0,
                                              color: Color(0XFF8AC185)),
                                        ),
                                        Center(
                                          child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  14,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  14,
                                              child: SvgPicture.asset(
                                                  SvgIcons.camera)),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )))),
              ]),
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  'Jessica Jerry',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0XFF313D56),
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                child: Text(
                  '1901 Thornridge Cir. Shiloh, Hawaii 81063',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0XFF313D56),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SfUiDisplayLight'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  '(208) 555-0112',
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'SfUiDisplayLight',
                      color: Color(0XFF8AC185),
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
//                          height: MediaQuery.of(context).size.height / 1.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade50,
                        offset: const Offset(
                          0.0,
                          0.0,
                        ),
                        blurRadius: 50.0,
                        spreadRadius: 30.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProfileSetting(),
                                    ));
                              },
                              child: ProfileHomeLists(
                                label: 'Profile Settings',
                                icon: SvgIcons.user,
                              )),
                          Divider(),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          FavouriteTherapist(),
                                    ));
                              },
                              child: ProfileHomeLists(
                                label: 'Favorite Therapist',
                                icon: SvgIcons.users,
                              )),
                          Divider(),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SettingProfile(),
                                    ));
                              },
                              child: ProfileHomeLists(
                                label: 'Settings',
                                icon: SvgIcons.setting,
                              )),
                          Divider(),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => About(),
                                    ));
                              },
                              child: ProfileHomeLists(
                                label: 'About',
                                icon: SvgIcons.about,
                              )),
                          Divider(),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PageOffer(),
                                    ));
                              },
                              child: ProfileHomeLists(
                                label: 'Offers',
                                icon: SvgIcons.gift,
                              )),
                          Divider(),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ContactUs(),
                                    ));
                              },
                              child: ProfileHomeLists(
                                label: 'Contact us',
                                icon: SvgIcons.chat,
                              )),
                          Divider(),
                          GestureDetector(
//                                      onTap: () {
//                                        Navigator.push(
//                                            context,
//                                            MaterialPageRoute(
//                                              builder: (context) =>
//                                                  ProfileHome(),
//                                            ));
//                                      },
                              child: ProfileHomeLists(
                            label: 'Logout',
                            icon: SvgIcons.logout,
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
