import 'package:cloud_spa/screens/therapist/registration/address_certificate.dart';
import 'package:cloud_spa/utlity_components/colors.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:cloud_spa/widgets/gradient_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileSetup extends StatefulWidget {
  @override
  _ProfileSetupState createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  TextEditingController firstName = new TextEditingController();
  TextEditingController userName = new TextEditingController();
  TextEditingController lastName = new TextEditingController();
  TextEditingController gender = new TextEditingController();
  TextEditingController dob = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CloudSpaScaffold(
      action: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Center(
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  child: LinearProgressIndicator(
                    value: 0.33,
                    backgroundColor: Color(0xFFF5F5F5),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '1/3',
                  style: TextStyle(color: Color(0xFFF96289)),
                ),
              ],
            ),
          ),
        )
      ],
      isback: true,
      title: '',
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Profile Setup',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 52.5,
                    backgroundColor: Color(0xffF5F5F5),
                    child: SvgPicture.asset(SvgIcons.profile),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SvgPicture.asset(SvgIcons.addProfileImage),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              LabeledTextField(
                controller: lastName,
                label: 'Last Name',
                suffix: false,
                hintText: 'Enter Last Name',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: firstName,
                label: 'First name',
                suffix: false,
                hintText: 'Enter First name',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: userName,
                label: 'Username',
                suffix: false,
                hintText: 'Enter Username',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: gender,
                label: 'Gender',
                suffix: true,
                suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                hintText: 'Select Gender',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: dob,
                label: 'Date of Birth',
                suffix: true,
                suffixIcon: Icon(Icons.calendar_today_outlined),
                hintText: 'Select Date of Birth',
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text(
                    'Your age is:',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF313D56),
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                      children: <TextSpan>[
                        TextSpan(
                          text: '25',
                          style: new TextStyle(color: Color(0xFFF96289)),
                        ),
                        TextSpan(text: ' Years  '),
                        TextSpan(
                          text: '10',
                          style: new TextStyle(color: Color(0xFFF96289)),
                        ),
                        TextSpan(text: ' Months  '),
                        TextSpan(
                          text: '22',
                          style: new TextStyle(color: Color(0xFFF96289)),
                        ),
                        TextSpan(text: ' Days '),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: colors.dividercolor),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(SvgIcons.pinRed),
                    ),
                    Text(
                      'Upload ID',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF989EAA)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              GradientButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddressAndCertificate(),
                      ));
                },
                label: 'Next',
              ),
              SizedBox(
                height: 36,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
