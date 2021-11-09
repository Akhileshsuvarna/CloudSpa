import 'package:cloud_spa/screens/therapist/auth/sign_in.dart';
import 'package:cloud_spa/screens/therapist/registration/profile_Setup.dart';
import 'package:cloud_spa/utlity_components/colors.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:cloud_spa/widgets/gradient_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController email = new TextEditingController();
  TextEditingController phoneNumber = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmPassword = new TextEditingController();
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
          child: SingleChildScrollView(
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
                  controller: email,
                  label: 'Mail Address',
                  suffix: false,
                  hintText: 'Enter Mail address',
                ),
                SizedBox(
                  height: 24,
                ),
                LabeledTextField(
                  controller: phoneNumber,
                  label: 'Phone number',
                  suffix: false,
                  hintText: 'Enter Phone number',
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
                GradientButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileSetup(),
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
                          builder: (context) => SignIn(),
                        ));
                  },
                  child: RichText(
                    text: new TextSpan(
                      style: new TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF313D56),
                          fontWeight: FontWeight.w300),
                      children: <TextSpan>[
                        new TextSpan(text: 'Have an account?'),
                        new TextSpan(
                            text: ' Sign in now',
                            style: new TextStyle(color: Colors.redAccent)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
