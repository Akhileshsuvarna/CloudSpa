import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Therapistbooking/TherapistBooking.dart';

class PageTherapist extends StatefulWidget {
  @override
  _PageTherapistState createState() => _PageTherapistState();
}

class _PageTherapistState extends State<PageTherapist> {
  bool _condition = true;

  Widget _therapistList() {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(16.0),
      childAspectRatio: 5.5 / 9.0,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TherapistBooking(),
              ),
            );
          },
          child: Container(
            child: Card(
              elevation: 0,
              color: Color(0XFFF5F5F5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 9.0 / 9.2,
                        child: Container(
                            child: Padding(
                          padding: const EdgeInsets.fromLTRB(9, 0, 9, 0),
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            margin: EdgeInsets.only(top: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: Image.asset(
                                'assets/images/therapistlist.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        )),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (_condition == true)
                                _condition = false;
                              else
                                _condition = true;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 15),
                            child: _condition
                                ? CustomPaint(
                                    size: Size(40, 42),
                                    painter: HeartPainterDeselect(),
                                  )
                                : CustomPaint(
                                    size: Size(40, 42),
                                    painter: HeartPainter(),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Cody Fisher',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            SvgPicture.asset(SvgIcons.starThin),
                            SizedBox(
                              width: 3,
                            ),
                            Text('4.5'),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SvgPicture.asset(SvgIcons.mapRoute),
                            ),
                            Text(
                              '3.9 km',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Starts at',
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 12,
                              fontFamily: 'SfUiDisplayLight',
                              fontWeight: FontWeight.w600),
                        ),
                        RichText(
                          text: TextSpan(
                              text: '10000¥',
                              style: TextStyle(
                                  color: Color(0xFF8AC185), fontSize: 15),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '/90mins',
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12,
                                      fontFamily: 'SfUiDisplayLight',
                                      fontWeight: FontWeight.w600),
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
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
        title: Text(
          'Therapist',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          //Action Setting
          IconButton(
            icon: SvgPicture.asset(SvgIcons.adjustment),
            color: Colors.black,
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: _therapistList(),
    );
  }
}

class HeartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 = Paint();
    paint1
      ..color = Color(0xFFF96289)
      ..style = PaintingStyle.fill
      ..strokeWidth = 0;

    double width = size.width / 1.8;
    double height = size.height / 1.8;

    Path path = Path();
    path.moveTo(0.5 * width, height * 0.35);
    path.cubicTo(0.2 * width, height * 0.1, -0.25 * width, height * 0.6,
        0.5 * width, height);
    path.moveTo(0.5 * width, height * 0.35);
    path.cubicTo(0.8 * width, height * 0.1, 1.25 * width, height * 0.6,
        0.5 * width, height);

    canvas.drawPath(path, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeartPainterDeselect extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint
      ..color = Color(0xFF989EAA)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2;

    Paint paint1 = Paint();
    paint1
      ..color = Colors.transparent
      ..style = PaintingStyle.fill
      ..strokeWidth = 0;

    double width = size.width / 1.8;
    double height = size.height / 1.8;

    Path path = Path();
    path.moveTo(0.5 * width, height * 0.35);
    path.cubicTo(0.2 * width, height * 0.1, -0.25 * width, height * 0.6,
        0.5 * width, height);
    path.moveTo(0.5 * width, height * 0.35);
    path.cubicTo(0.8 * width, height * 0.1, 1.25 * width, height * 0.6,
        0.5 * width, height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
