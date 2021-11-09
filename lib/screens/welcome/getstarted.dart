import 'dart:async';

import 'package:cloud_spa/screens/therapist/auth/signup.dart';
import 'package:cloud_spa/screens/welcome/welcome.dart';
import 'package:cloud_spa/screens/user/user_auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:cloud_spa/widgets/green_user_button.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
class GetStarted extends StatefulWidget {

  @override
  _GetStartedState createState() => _GetStartedState();
}
class _GetStartedState extends State<GetStarted> {
  Future<String> _counter;
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool _isLoading = false;
  bool _key = false;
  bool redirect;
  Timer _timer;
  bool selected2 = false;

  @override
  void initState() {
    super.initState();

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
                builder: (context) => UserSignUp(),
              ),
            );
          } else {
            _key = true;
          }
          return prefs.getString('UserType').toString();
        });
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    _isLoading = true;
    return Scaffold(
      body: SafeArea(
        child: _key
            ? new SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1,
                height: MediaQuery.of(context).size.height / 1.7,
                // child: Image.asset('assets/images/getstarted.jpg'),
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/images/getstarted.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    'Welcome to\nCloud SPA',
                    style: TextStyle(
                        color: Color(0xFF313D56),
                        fontSize: 35,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
                child: Text(
                  'Personalized spa experience for you',
                  style: TextStyle(
                      color: Color(0xFF313D56),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                child: GreenUserButton(
                  onPressed: () {
                    _key = true;
                    redirect=true;
                    Navigator.push(
                        context,

                        MaterialPageRoute(
                          builder: (context) => InnerSwiper(redirect),
                        )
                    );
                  },
                  label: 'Get Started',
                ),
              ),
              GestureDetector(
                onTap: () {
                  _key = true;
                  redirect=false;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  InnerSwiper(redirect),
                      ));
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(bottom: 50.0),
                  child: GradientText(
                    'or join us as Therapist',
                    gradient: LinearGradient(colors: [
                      Color(0XFFF96289),
                      Color(0XFF3F5EFB),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        )
        : redirect==1
            ? new  UserSignUp() : new SignUpPage()
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  GradientText(
    this.text, {
    @required this.gradient,
  });

  final String text;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: TextStyle(
          // The color must be set to white for this to work
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
