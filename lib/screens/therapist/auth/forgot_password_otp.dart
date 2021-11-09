import 'package:cloud_spa/screens/therapist/auth/password_reset.dart';
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:cloud_spa/widgets/gradient_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class ForgotPasswordOtp extends StatefulWidget {
  @override
  _ForgotPasswordOtpState createState() => _ForgotPasswordOtpState();
}

class _ForgotPasswordOtpState extends State<ForgotPasswordOtp> {
  TextEditingController email = new TextEditingController();
  String code = '';
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
              'What’s the Code?',
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
            PinFieldAutoFill(
              // focusNode: ,
              keyboardType: TextInputType.phone,
              currentCode: code,

              decoration: BoxLooseDecoration(
                // gapSpace: 20,
                radius: Radius.circular(15),
                strokeColorBuilder:
                    FixedColorBuilder(Colors.black.withOpacity(0.3)),
                textStyle: TextStyle(fontSize: 20, color: Colors.black),
                // colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
              ),
              codeLength: 4,
              onCodeSubmitted: (code) {},
              onCodeChanged: (otpcode) {
                code = otpcode;
                if (code.length == 4) {
                  FocusScope.of(context).requestFocus(FocusNode());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PasswordReset(),
                      ));
                }
              },
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
            Spacer(),
            GradientButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PasswordReset(),
                    ));
              },
              label: 'Verify Password',
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
