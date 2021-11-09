import 'package:flutter/material.dart';

class NotificationList extends StatelessWidget {
  final String day;
  final String message;
  final String time;
  final bool order;
  final String type;
  final String therapist;
  final String location;

  const NotificationList(
      {Key key,
      this.day,
      this.message,
      this.time,
      this.order,
      this.type,
      this.therapist,
      this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: IntrinsicHeight(
      child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: day == null
                  ? new Container()
                  : new Column(
                      children: [
                        new Text(
                          day,
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
            ),
            Container(
              child: order == true
                  ? new RichText(
                      text: TextSpan(
                          text: message,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(
                              text: type,
                              style: TextStyle(
                                  color: Color(0XFF8AC185), fontSize: 18),
                            ),
                            TextSpan(
                              text: ' by ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            TextSpan(
                              text: therapist,
                              style: TextStyle(
                                  color: Color(0XFF8AC185), fontSize: 18),
                            ),
                            TextSpan(
                              text: ',',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Location: ',
                              style:
                              TextStyle(color:Color(0XFF8AC185), fontSize: 18),
                            ),
                            TextSpan(
                              text: location,
                              style:
                              TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ]),
                    )
                  : new RichText(
                      text: TextSpan(
                          text: 'Order confirmed by ',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          children: <TextSpan>[
                          TextSpan(
                            text: therapist,
                            style: TextStyle(
                                color: Color(0XFF8AC185), fontSize: 18),
                          ),
                        ])),
            ),
                Container(
                  child: time == null
                      ? new Container()
                      : new Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      new Text(
                        time,
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
          ]),
        ),
      ]),
    ));
  }
}
