import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab2 extends StatefulWidget {
  @override
  _Tab2 createState() => _Tab2();
}

class _Tab2 extends State<Tab2> {
  List<Compleated> _compleated= [];


  @override
  void initState() {
    super.initState();
    setState(() {
      _compleated.add(Compleated(
          type: 'Aroma Message',
          price: '\$1270.00',
          time: '90 min',
          image: 'assets/images/booking.jpg',
          therapistName: 'Brookylin Simmons',
          bookedDateTime: '12 April,8:00 AM'
      ));
    });
  }


  Widget _compleateList(index) {
    return Container(
        width: MediaQuery.of(context).size.width -
            MediaQuery.of(context).size.width / 5,
        padding: EdgeInsets.symmetric (horizontal: 24,vertical: 10),
        child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.all ( Radius.circular(12)
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Text(
                          _compleated[index].type,
                          style: TextStyle(
                              color: Color(0XFF313D56),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text(
                          _compleated[index].price,
                          style: TextStyle(
                              color: Color(0XFF8AC185),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      _compleated[index].time,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Divider(),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(_compleated[index].image),
                                fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          _compleated[index].therapistName,
                          style: TextStyle(
                              color: Color(0XFF313D56),
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Text(
                          _compleated[index].bookedDateTime,
                          style: TextStyle(
                            color: Color(0XFF989EAA),
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ])
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height / 3,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _compleated.length,
                  itemBuilder: (context, index) => _compleateList(index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Compleated {
  String type;
  String price;
  String time;
  String image;
  String therapistName;
  String bookedDateTime;


  Compleated({@required this.type, this.price, this.time, this.image, this.therapistName, this.bookedDateTime});
}
