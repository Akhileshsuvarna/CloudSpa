import 'package:cloud_spa/screens/therapist/registration/purchase_towels.dart';
import 'package:cloud_spa/utlity_components/colors.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:cloud_spa/widgets/gradient_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressAndCertificate extends StatefulWidget {
  @override
  _AddressAndCertificateState createState() => _AddressAndCertificateState();
}

class _AddressAndCertificateState extends State<AddressAndCertificate> {
  TextEditingController country = new TextEditingController();
  TextEditingController state = new TextEditingController();
  TextEditingController city = new TextEditingController();
  TextEditingController street = new TextEditingController();
  TextEditingController houseNumber = new TextEditingController();
  int certificateCount = 1;
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
                    value: 0.66,
                    backgroundColor: Color(0xFFF5F5F5),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '2/3',
                  style: TextStyle(color: Color(0xFFF96289)),
                ),
              ],
            ),
          ),
        )
      ],
      isback: true,
      title: '',
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Text(
                'Address & Certificate',
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
                height: 56,
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
              Container(
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: certificateCount,
                  itemBuilder: (context, index) => Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 24,
                        ),
                        LabeledTextField(
                          controller: houseNumber,
                          label: 'Massage Service',
                          hintText: 'Select Massage Service',
                          suffix: true,
                          suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                        ),
                        SizedBox(
                          height: 10.0,
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
                              ),
                              Spacer(),
                              GradientIconButton(
                                iconPath: SvgIcons.upload,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    certificateCount += 1;
                  });
                },
                child: Row(
                  children: [
                    Text(
                      'Add another certificate',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffF96289),
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: Color(0xffF96289),
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
                        builder: (context) => PurchaseTowels(),
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
