import 'dart:async';
import 'dart:io';

import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
//import 'package:cloud_spa/screens/therapist/auth/sign_in.dart';
import 'package:cloud_spa/screens/user/home/home.dart';
import 'package:cloud_spa/utlity_components/colors.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/green_user_button.dart';
import 'package:cloud_spa/widgets/phonenumber.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSignUp extends StatefulWidget {
  final String _endpoint = "https://randomuser.me/api/";
  final Dio _dio = Dio();
  @override
  _UserSignUp createState() => _UserSignUp();
}
developerlibs() async {
  var dio = Dio();
  Response response = await dio.get('https://spauser.meerfuture.com/swagger/v1/swagger.json');
  stdout.write('api data');
  stdout.write(response.data);
}

class _UserSignUp extends State<UserSignUp> {
  TextEditingController firstName = new TextEditingController();
  TextEditingController userName = new TextEditingController();
  TextEditingController lastName = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController phoneNumber = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmPassword = new TextEditingController();
  TextEditingController dateOfBirth = new TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<String> _counter;
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool _isLoading = false;
  bool _key = false;
  Timer _timer;
  bool selected2 = false;
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'US'; //Initial Country Code IN -India
  PhoneNumber number = PhoneNumber(isoCode: 'US');



  @override
  void initState() {
    super.initState();
    developerlibs();
    _timer = new Timer(const Duration(milliseconds: 2500), () {
      // print(_timer.tick.toString());
      setState(() {
        _counter = _prefs.then((SharedPreferences prefs) {
          // print(prefs.getString('UserType').toString());
          if (prefs.getString('UserType').toString() == "0" ||
              prefs.getString('UserType').toString() == "1") {
            _key   = false;
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeUser(),
              ),
            );
          } else {
            _key = false;
            _key = true;
          }
          return prefs.getString('UserType').toString();
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CloudSpaScaffold(
      action: [],
      isback: true,
      title: '',
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: _key
              ? new SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Sign up',
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
                  controller: email,
                  label: 'Mail Address',
                  suffix: false,
                  hintText: 'Enter Mail address',
                ),
                SizedBox(
                  height: 24,
                ),

                LabeledTextField(
                  controller: password,
                  label: 'Password',
                  suffix: true,
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  hintText: 'Enter Password',
                ),
                SizedBox(
                  height: 24,
                ),
                LabeledTextField(
                  controller: confirmPassword,
                  label: 'Confirm password',
                  suffix: true,
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  hintText: 'Re-Enter Password',
                ),
                SizedBox(
                  height: 24,
                ),
                PhoneNumberinput(
                  controller: phoneNumber,
                  label: 'Phone number',
                  suffix: false,
                  phonenumber: InternationalPhoneNumberInput(
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                    ignoreBlank: false,
                    inputBorder: InputBorder.none,
                    autoValidateMode: AutovalidateMode.disabled,
                    initialValue: number,
                    textFieldController: controller,
                    formatInput: false,
                    keyboardType:
                    TextInputType.numberWithOptions(signed: true, decimal: true), onInputChanged: (PhoneNumber value) {  },
                  ),
                  hintText: 'Enter Phone number',
                ),
                SizedBox(
                  height: 24,
                ),
                LabeledTextField(
                  controller: dateOfBirth,
                  label: 'Date of Birth',
                  suffix: true,
                  suffixIcon:  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(SvgIcons.calendar),
                  ),
                  hintText: 'Select Date of Birth',
                ),
                SizedBox(
                  height: 24,
                ),
                GreenUserButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeUser(),
                        ));
                  },
                  label: 'Sign up',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: colors.dividercolor,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'or continue with',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: colors.dividercolor,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: colors.dividercolor,
                            width: 1,
                          ),
                        ),
                        child: SvgPicture.asset(SvgIcons.google),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: colors.dividercolor,
                            width: 1,
                          ),
                        ),
                        child: SvgPicture.asset(SvgIcons.apple),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,

                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          HomeUser(),
//                            SignIn(),
                        ));
                  },
                  child: RichText(
                    text: new TextSpan(
                      style: new TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
//                        color: Color(0xFF313D56),
                          fontWeight: FontWeight.w300),
                      children: <TextSpan>[
                        new TextSpan(text: 'Have an account?'),
                        new TextSpan(
                            text: ' Sign in now',
                            style: new TextStyle(color: Color(0xFF7768D8))),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,)
              ],
            ),
          )
              : new Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Center(
              child:
              Center(child: Lottie.asset('assets/anim/loading.json')),
            ),
          ),
        ),
      ),
    );
  }
}
