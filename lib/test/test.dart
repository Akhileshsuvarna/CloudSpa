
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CloudSpaScaffold(
      action: [],
      isback: false,
      title: 'test',
      body: Container(
        child: ListView(
          children: [
//            ElevatedButton(
//                onPressed: () {
//                  Navigator.of(context).push(MaterialPageRoute(
//                    builder: (context) => SignUpPage(),
//                  ));
//                },
//                child: Text('SignUp')),
//            ElevatedButton(
//                onPressed: () {
//                  Navigator.of(context).push(MaterialPageRoute(
//                    builder: (context) => ProfileSetup(),
//                  ));
//                },
//                child: Text('Profile')),
//            ElevatedButton(
//                onPressed: () {
//                  Navigator.of(context).push(MaterialPageRoute(
//                    builder: (context) => AddressAndCertificate(),
//                  ));
//                },
//                child: Text('Address and Certificate')),
//            ElevatedButton(
//              onPressed: () {
//                Navigator.of(context).push(MaterialPageRoute(
//                  builder: (context) => BankDetails(),
//                ));
//              },
//              child: Text('Bank Details'),
//            ),
//            ElevatedButton(
//              onPressed: () {
//                Navigator.of(context).push(MaterialPageRoute(
//                  builder: (context) => SignIn(),
//                ));
//              },
//              child: Text('Sign in'),
//            ),
//            ElevatedButton(
//              onPressed: () {
//                Navigator.of(context).push(MaterialPageRoute(
//                  builder: (context) => ForgotPassword(),
//                ));
//              },
//              child: Text('forgot Password'),
//            ),
//            ElevatedButton(
//              onPressed: () {
//                Navigator.of(context).push(MaterialPageRoute(
//                  builder: (context) => PasswordReset(),
//                ));
//              },
//              child: Text('reset Password'),
//            ),
//            ElevatedButton(
//              onPressed: () {
//                Navigator.of(context).push(MaterialPageRoute(
//                  builder: (context) => ForgotPasswordOtp(),
//                ));
//              },
//              child: Text('reset otp'),
//            ),
          ],
        ),
      ),
    );
  }
}
