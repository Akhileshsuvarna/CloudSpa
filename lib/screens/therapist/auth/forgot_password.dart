import 'package:cloud_spa/screens/therapist/auth/forgot_password_otp.dart';
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:cloud_spa/widgets/gradient_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController email = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CloudSpaScaffold(
      action: [],
      isback: true,
      title: '',
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Text(
              'Forgot Password',
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
            Spacer(),
            GradientButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgotPasswordOtp(),
                  ),
                );
              },
              label: 'Reset Password',
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
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
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
