
import 'package:cloud_spa/screens/therapist/auth/signup.dart';
import 'package:cloud_spa/screens/user/home/home_page.dart';
import 'package:cloud_spa/screens/user/user_auth/signup.dart';
import 'package:cloud_spa/utlity_components/colors.dart';
import 'package:cloud_spa/widgets/gradient_button.dart';
import 'package:cloud_spa/widgets/green_user_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MyStructure {
  final String head;
  final String description;
  MyStructure({this.head, this.description});
}

class Welcome extends StatelessWidget {
  final MyStructure widgetStructure;
  Welcome(this.widgetStructure);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:70.0,bottom: 25.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.width / 2.5,
                // child: Image.asset('assets/images/getstarted.jpg'),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/images/getstarted.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    child: Text(
                      '${widgetStructure.head} ',
                      style: TextStyle(
                          color: Color(0xFF313D56),
                          fontSize: 30,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Text(
                    ' ${widgetStructure.description}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF313D56),
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),

          ],
        ),

    );
  }
}

class InnerSwiper extends StatefulWidget {
  final bool keyCode;
  InnerSwiper(this.keyCode);
  @override
  State<StatefulWidget> createState() {
    return new _InnerSwiperState(this.keyCode);
  }
}

class _InnerSwiperState extends State<InnerSwiper> {
  final bool keyCode;
  _InnerSwiperState(this.keyCode);
  SwiperController controller;

  List<bool> autoplayes;

  List<SwiperController> controllers;
  List<MyStructure> widgetList = [];

  @override
  void initState() {
    controller = new SwiperController();

    for(int i=0;i < 3; i++) {
      widgetList.add(MyStructure(head:'welcome',description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        body: new Column(
            children: <Widget>[
              new SizedBox(
                child:  new Swiper(
                    loop: false,
                    itemCount: widgetList.length,
                    controller: controller,
                  pagination: new SwiperPagination(
                          builder: new DotSwiperPaginationBuilder(
                            space: 5.0,
                          size: 5.0,
                          activeSize: 15.0,
                          color: Color(0xFFFD6D8DD), activeColor: Color(0xFFF96289))),
                    itemBuilder: (BuildContext context, int index) {
                      return  Welcome(widgetList[index]);
                    },
                  ),
                height: MediaQuery.of(context).size.height / 1.5,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90.0,vertical:50.0),
                child: Container(
                  child:  keyCode ? GreenUserButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserSignUp(),
                          )
                      );
                    },
                    label: 'Get Started',
                  ) :
                  GradientButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          )
                      );
                    },
                    label: 'Get Started',
                  )

                ),
              ),
            ],
          ),
      ),
    );
  }
}