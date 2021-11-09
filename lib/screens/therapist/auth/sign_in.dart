import 'package:cloud_spa/screens/therapist/auth/forgot_password.dart';
import 'package:cloud_spa/screens/therapist/auth/signup.dart';
import 'package:cloud_spa/screens/therapist/home/home.dart';
import 'package:cloud_spa/utlity_components/colors.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:cloud_spa/widgets/gradient_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return CloudSpaScaffold(
      action: [],
      isback: true,
      title: '',
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Sign in ',
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
                controller: password,
                label: 'Password',
                suffix: true,
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                hintText: 'Enter Password',
              ),
              Row(
                children: [
                  Checkbox(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value;
                      });
                    },
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF040415),
                        fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ));
                    },
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF040415),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              GradientButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ));
                },
                label: 'Sign in',
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
                        builder: (context) => SignUpPage(),
                      ));
                },
                child: RichText(
                  text: new TextSpan(
                    style: new TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF313D56),
                        fontWeight: FontWeight.w300),
                    children: <TextSpan>[
                      new TextSpan(text: 'Don\'t have an account?'),
                      new TextSpan(
                          text: ' Sign up now',
                          style: new TextStyle(color: Colors.redAccent)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
