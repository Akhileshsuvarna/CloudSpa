import 'package:cloud_spa/screens/therapist/auth/sign_in.dart';
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:cloud_spa/widgets/gradient_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';

class PasswordReset extends StatefulWidget {
  @override
  _PasswordResetState createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  TextEditingController password = new TextEditingController();
  TextEditingController confirmPassword = new TextEditingController();

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
              'Reset Password',
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
            Spacer(),
            GradientButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                    ));
              },
              label: 'Complete',
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
