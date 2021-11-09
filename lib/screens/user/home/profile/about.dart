import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String bullet = "\u2022";
    return Material(
      child:   Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          margin: EdgeInsets.only(top: 20),
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade50,
                offset: const Offset(
                  0.0,
                  0.0,
                ),
                blurRadius: 50.0,
                spreadRadius: 30.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: const Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
          ),
          child: SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image:
                              AssetImage('assets/images/profile.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        'Company Name',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Color(0XFF313D56)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0XFF313D56),
                          fontFamily: 'SfUiDisplayLight',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'Since 2016',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'SfUiDisplayLight',
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF313D56)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'About',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF313D56)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'SfUiDisplayLight',
                          color: Color(0xFF313D56)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Vission',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF313D56)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'SfUiDisplayLight',
                          color: Color(0xFF313D56)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                          text: bullet,
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'SfUiDisplayLight',
                              color: Color(0xFF8AC185)),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' It has survived not only five centuries, but also the leap',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'SfUiDisplayLight',
                                  color: Color(0xFF313D56)),
                            )
                          ]),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                          text: bullet,
                          style: TextStyle(
                              fontSize: 23,
                              fontFamily: 'SfUiDisplayLight',
                              color: Color(0xFF8AC185)),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' into electronic typesetting, remaining essentially unchanged.',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'SfUiDisplayLight',
                                  color: Color(0xFF313D56)),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                          text: bullet,
                          style: TextStyle(
                              fontSize: 23,
                              fontFamily: 'SfUiDisplayLight',
                              color: Color(0xFF8AC185)),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' It was popularised in the 1960s',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'SfUiDisplayLight',
                                  color: Color(0xFF313D56)),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
          ),
        ),
      ),
    );

  }
}
