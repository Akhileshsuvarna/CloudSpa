import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:cloud_spa/widgets/gradient_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InformationEdit extends StatefulWidget {
  const InformationEdit({Key key}) : super(key: key);

  @override
  _InformationEditState createState() => _InformationEditState();
}

class _InformationEditState extends State<InformationEdit> {
  TextEditingController firstName = new TextEditingController();
  TextEditingController userName = new TextEditingController();
  TextEditingController lastName = new TextEditingController();
  TextEditingController country = new TextEditingController();
  TextEditingController state = new TextEditingController();
  TextEditingController city = new TextEditingController();
  TextEditingController street = new TextEditingController();
  TextEditingController houseNumber = new TextEditingController();
  TextEditingController dob = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CloudSpaScaffold(
      title: 'Edit',
      isback: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                    child: SvgPicture.asset(SvgIcons.profilePhotoPick),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
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
              LabeledTextField(
                controller: dob,
                label: 'Phone Number',
                suffix: false,
                prefix: false,
                prefixWidget: Text(
                  '+81',
                  style: TextStyle(color: Colors.black),
                ),
                suffixIcon: Icon(Icons.calendar_today_outlined),
                hintText: 'Select Date of Birth',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: country,
                label: 'Country',
                suffix: true,
                suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                hintText: 'Select Country',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: state,
                label: 'State',
                suffix: true,
                suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                hintText: 'Select State',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: city,
                label: 'City',
                suffix: true,
                suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                hintText: 'Select City',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: street,
                label: 'Street',
                suffix: false,
                hintText: 'Enter Street',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: houseNumber,
                label: 'House Number',
                suffix: false,
                suffixIcon: Icon(Icons.calendar_today_outlined),
                hintText: 'Enter House Number',
              ),
              SizedBox(
                height: 32,
              ),
              GradientButton(
                label: 'Save',
                onPressed: () {},
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
