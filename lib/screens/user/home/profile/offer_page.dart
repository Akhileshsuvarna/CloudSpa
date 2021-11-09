import 'package:flutter/material.dart';

class PageOffer extends StatefulWidget {
  @override
  _PageOfferState createState() => _PageOfferState();
}

class _PageOfferState extends State<PageOffer> {
  List<Offers> _offers = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      _offers.add(Offers(
          type: 'On Thai Message',
          price: '\$2% Off',
          code: '5682 - 5478 - 4561 - 2580',
          image: 'assets/images/offer.jpg'
          ));
      _offers.add(Offers(
          type: 'On Aroma Message',
          price: '\$50% Off',
          code: ' 4100 - 5847 - 2001 - 5820',
          image: 'assets/images/offer.jpg'
      ));
      _offers.add(Offers(
          type: 'On Thai Message',
          price: '\$2% Off',
          code: '5682 - 5478 - 4561 - 2580',
          image: 'assets/images/offer.jpg'
      ));
      _offers.add(Offers(
          type: 'On Thai Message',
          price: '\$2% Off',
          code: '5682 - 5478 - 4561 - 2580',
          image: 'assets/images/offer.jpg'
      ));
    });
  }

  Widget _offersList(index) {
    return Container(
        width: MediaQuery.of(context).size.width -
            MediaQuery.of(context).size.width / 5,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFFD6D8DD).withOpacity(0.3),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage(_offers[index].image),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          _offers[index].price,
                          style: TextStyle(
                              color: Color(0XFF8AC185),
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          _offers[index].type,
                          style: TextStyle(
                              color: Color(0XFF313D56),
                            fontSize: 13,
                            fontFamily: 'SfUiDisplayLight',
                            fontWeight: FontWeight.w600,)
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFF8AC185),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
            ),
            child: Center(
              child: Text(
                'Code: '+_offers[index].code,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                     fontFamily: 'SfUiDisplayLight',
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ]));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          'Offers',
          style: TextStyle(
            color: Color(0xFF313D56),
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height/1.1,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _offers.length,
                  itemBuilder: (context, index) => _offersList(index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Offers {
  String type;
  String price;
  String image;
  String code;

  Offers(
      {@required this.type,
      this.price,
      this.code,
      this.image
      });
}
