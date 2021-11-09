import 'package:cloud_spa/screens/user/home/uploadDoc.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/green_user_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TherapistBooking extends StatefulWidget {
  @override
  _TherapistBookingState createState() => _TherapistBookingState();
}

class _TherapistBookingState extends State<TherapistBooking> {
  _bookBtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        child: Column(
          children: [
            GreenUserButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UplaodDoc(),
                    ));
//            Navigator.push(
//                context,
//                MaterialPageRoute(
//                  builder: (context) => HomeUser(),
//                ));
              },
              label: 'Book Now',
            ),
          ],
        ),
      ),
    );
  }

  _reveivedData() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/mahmudul.jpg',
                  ),
                ),
                borderRadius: BorderRadius.circular(12)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Mahmudul Hasan',
                style: TextStyle(color: Color(0XFF313D56), fontSize: 15),
              ),
              Container(
                  width: MediaQuery.of(context).size.width / 2.1,
                  child: Text(
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'SfUiDisplayLight',
                        fontWeight: FontWeight.w400),
                  ))
            ]),
          ),

          Expanded(
//            flex: 1,
            child: Expanded(
              child: Row(
                children: [
                  SvgPicture.asset(SvgIcons.starThin),
                  Text(
                    "4.5",
                    style: TextStyle(color: Color(0XFF313D56), fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
//              Container(
//                margin: EdgeInsets.only(left: 10),
//                child: Column(
//                  crossAxisAlignment:
//                  CrossAxisAlignment.start,
//                  children: [
//                    Row(
//                      crossAxisAlignment:
//                      CrossAxisAlignment.start,
//                      children: [
//
//                        Align(
//                          alignment:
//                          Alignment.topRight,
//                          child: Row(
//                            children: [
//                              SvgPicture.asset(
//                                  SvgIcons
//                                      .starThin),
//                              Text("4.5",style: TextStyle(color: Color(0XFF313D56),fontSize: 18),),
//                            ],
//                          ),
//                        ),
//                      ],
//                    ),
////                    Container(
////                        width:
////                        MediaQuery.of(context)
////                            .size
////                            .width /
////                            1.8,
////                        child: )
//                  ],
//                ),
//              )
        ],
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 70,
          elevation: 0,
          title: Row(children: <Widget>[
            new SvgPicture.asset(SvgIcons.back),
            new Container(
                margin: const EdgeInsets.only(left: 10),
                child: new Text(
                  'Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SfUiDisplayLight',
                      fontWeight: FontWeight.w400),
                )),
          ]),
          backgroundColor: Colors.white,
        ),
        body: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
              child: ConstrainedBox(
                  constraints:
                      BoxConstraints(minHeight: viewportConstraints.maxHeight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Container(
                                height: 200,
                                width: 150,
                                child: Card(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/images/therapistlist.jpg',
                                  ),
                                )),
                            Container(
                              height: 150,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: 25.0, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Cody Fisher',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0XFF313D56),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    'Shibuya, Tokyo',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: SvgPicture.asset(
                                          SvgIcons.mapRoute,
                                          color: Color(0XFF8AC185),
                                        ),
                                      ),
                                      Text(
                                        '3.9 km',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0XFF8AC185)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 50,
                                          width: 50,
                                          child: Card(
                                            elevation: 40,
                                            shadowColor: Colors.grey.shade50,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: SvgPicture.asset(
                                                  SvgIcons.star),
                                            ),
                                          )),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Rating',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '4.5 out of 5.0',
                                            style: TextStyle(
                                                color: Color(0XFF313D56),
                                                fontSize: 15),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
//                          height: MediaQuery.of(context).size.height / 1.8,
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
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Type of Massage',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Thai Message',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'SfUiDisplayLight',
                                        color: Color(0xFF313D56)),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF313D56)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '90 mins=10,000',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'SfUiDisplayLight',
                                        color: Color(0xFF313D56)),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Location',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF313D56)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                            'assets/images/location.jpg',
                                          ),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Reviews',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF313D56)),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 170,
                                        child: ListView.builder(
                                          scrollDirection: Axis.vertical,
                                          itemBuilder: (context, index) =>
                                              _reveivedData(),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      _bookBtn(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )));
        }));
  }
}
