import 'package:cloud_spa/widgets/green_user_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SettingProfile extends StatefulWidget {
  @override
  _SettingProfileState createState() => _SettingProfileState();
}

class _SettingProfileState extends State<SettingProfile> {
  TextEditingController oldPassword = new TextEditingController();
  TextEditingController newPassword = new TextEditingController();
  TextEditingController confirmNewPassword = new TextEditingController();
  bool isSwitchedMail = false;
  bool isSwitchedNotification = true;
  var textValue = 'Switch is OFF';

  void toggleSwitchMail(bool value) {
    if (isSwitchedMail == false) {
      setState(() {
        isSwitchedMail = true;
      });
    } else {
      setState(() {
        isSwitchedMail = false;
      });
    }
  }

  void toggleSwitchNotification(bool value) {
    if (isSwitchedNotification == false) {
      setState(() {
        isSwitchedNotification = true;
      });
    } else {
      setState(() {
        isSwitchedNotification = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            'Settings',
            style: TextStyle(
              color: Color(0xFF313D56),
              fontSize: 22,
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height / 1.1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Change Password',
                style: TextStyle(
                    color: Color(0XFF8AC185),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 25,
              ),
              LabeledTextField(
                controller: oldPassword,
                label: 'Old Password',
                suffix: true,
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                hintText: 'Enter Old Password',
              ),
              SizedBox(
                height: 20,
              ),
              LabeledTextField(
                controller: newPassword,
                label: 'New Password',
                suffix: true,
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                hintText: 'Enter New Password',
              ),
              SizedBox(
                height: 20,
              ),
              LabeledTextField(
                controller: confirmNewPassword,
                label: 'Last Name',
                suffix: true,
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                hintText: 'Enter Last Name',
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Notification',
                style: TextStyle(
                    color: Color(0XFF8AC185),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Email Notification',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Container(
                    child: Switch(
                      onChanged: toggleSwitchMail,
                      value: isSwitchedMail,
                      activeColor: Color(0XFF8AC185),
                      activeTrackColor: Color(0XFF8AC185).withOpacity(0.2),
                      inactiveThumbColor: Color(0XFF989EAA),
                      inactiveTrackColor: Color(0XFF989EAA).withOpacity(0.2),
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text(
                    'In App Notification',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Container(
                    child: Switch(
                      onChanged: toggleSwitchNotification,
                      value: isSwitchedNotification,
                      activeColor: Color(0XFF8AC185),
                      activeTrackColor: Color(0XFF8AC185).withOpacity(0.2),
                      inactiveThumbColor: Color(0XFF989EAA),
                      inactiveTrackColor: Color(0XFF989EAA).withOpacity(0.2),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              GreenUserButton(
//                        onPressed: () {
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                builder: (context) => HomeUser(),
//                              ));
//                        },
                label: 'Save',
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ))));
  }
}
