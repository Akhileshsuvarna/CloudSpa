import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextEditingController password = new TextEditingController();
  TextEditingController oldPassword = new TextEditingController();
  TextEditingController confirmPassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CloudSpaScaffold(
      isback: true,
      title: 'Settings',
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Change Password',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFFF96289),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: oldPassword,
                label: 'Old Password',
                suffix: true,
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                hintText: 'Enter Old Password',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: password,
                label: 'New Password',
                suffix: true,
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                hintText: 'Enter Password',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: confirmPassword,
                label: 'Confirm New password',
                suffix: true,
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                hintText: 'Re-Enter Password',
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Notification',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFFF96289),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text(
                    'Email Notification',
                    style: TextStyle(
                      color: Color(0xFF2F3137),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Switch(value: true, onChanged: (value) {})
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                color: Color(0xFFD6D8DD),
                height: 1,
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    'In App Notification',
                    style: TextStyle(
                      color: Color(0xFF2F3137),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Switch(value: false, onChanged: (value) {})
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
