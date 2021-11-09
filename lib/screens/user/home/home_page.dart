import 'package:cloud_spa/screens/user/home/profile_home.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/green_user_button.dart';
import 'package:cloud_spa/widgets/profile_live_badge.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeUserPage extends StatefulWidget {
  @override
  _HomeUserPageState createState() => _HomeUserPageState();
}

class _HomeUserPageState extends State<HomeUserPage> {
  var _user = <Map>[];
  List<BannerList> _bannerList = [];
  List<MassageServices> _massageList = [];
  List<NearbyTherapist> _nearbyTherapist = [];

  TextEditingController searchDate = new TextEditingController();
  TextEditingController searchTime = new TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {

      _nearbyTherapist.add(NearbyTherapist(
          name: 'Jessica Jerry',
          image: 'assets/images/nearbytherapist.jpg',
          rating: '4.5',
          km: '3.9'));
      _nearbyTherapist.add(NearbyTherapist(
          name: 'Jessica Jerry',
          image: 'assets/images/nearbytherapist.jpg',
          rating: '4.5',
          km: '3.9'));
      _nearbyTherapist.add(NearbyTherapist(
          name: 'Jessica Jerry',
          image: 'assets/images/nearbytherapist.jpg',
          rating: '4.5',
          km: '3.9'));
      _massageList.add(MassageServices(
          name: 'Thai Message', image: 'assets/images/massageservices.jpg'));
      _massageList.add(MassageServices(
          name: 'Swedish Massage', image: 'assets/images/massageservices.jpg'));
      _massageList.add(MassageServices(
          name: 'Aroma Message', image: 'assets/images/massageservices.jpg'));
      _bannerList.add(
          BannerList(name: 'Jessica Jerry', image: 'assets/images/banner.jpg'));
      _bannerList.add(
          BannerList(name: 'Jessica Jerry', image: 'assets/images/banner.jpg'));
      _bannerList.add(
          BannerList(name: 'Jessica Jerry', image: 'assets/images/banner.jpg'));
      _user.add({
        'Name': 'Jessica Jerry',
        'Image': 'assets/images/profile icon.jpg',
        'Location': '6391 Elgin St. Celina, Delaware 10299'
      });
    });
  }

  Widget _header() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Row(
        children: [
          Stack(children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage(_user[0]['Image']), fit: BoxFit.fill),
              ),
            ),
            ProfileLiveBadge(
              keybool: true,
            )
          ]),
          SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                  opacity: 0.5,
                  child: Text(
                    'Hi',
                    style: TextStyle(
                        color: Color(0xFF313D56),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )),
              Text(
                _user[0]['Name'],
                style: TextStyle(
                    color: Color(0xFF313D56),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileHome(),
                  ));
            },
            child: Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: Color(0xff313D56).withOpacity(0.4),
                  width: 0.5,
                ),
              ),
              child: SvgPicture.asset(SvgIcons.grid),
            ),
          )
        ],
      ),
    );
  }

  Widget _infoHead() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find',
                style: TextStyle(
                    color: Color(0xFF313D56),
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      'best therapist',
                      style: TextStyle(
                          color: Color(0xFF313D56),
                          fontFamily: 'SfUiDisplayLight',
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      ' nearby',
                      style: TextStyle(
                          color: Color(0xFF8AC185),
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('assets/images/perfect.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(children: [
                SvgPicture.asset(SvgIcons.map),
                SizedBox(
                  width: 8,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    _user[0]['Location'],
                    style: TextStyle(
                      fontFamily: 'SfUiDisplayLight',
                      color: Color(0xFF313D56),
                      fontSize: 15,
                    ),
                  ),
                ),
              ])
            ],
          ),
        ],
      ),
    );
  }

  Widget _search() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            Container(
              width: 240,
              child: TextFormField(
                onTap: () {
                  showSearch(context: context, delegate: DataSearch());
                },
                decoration: new InputDecoration(
                  filled: true,
                  hintStyle: TextStyle(
                    color: Color(0xFFD6D8DD),
                    fontSize: 18,
                  ),
                  fillColor: Colors.white,
                  focusColor: Colors.white,
//                        suffixIcon: SvgPicture.asset(SvgIcons.calendar),
                  hintText: "Search ...",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(SvgIcons.searchGreen),
                  ),
                  isDense: true,
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 0, minHeight: 0),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0xFFD6D8DD),
                      )),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                _modalBottomSheet();
              },
              child: Container(
                padding: EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.4),
                    width: 1.0,
                  ),
                ),
                child: SvgPicture.asset(SvgIcons.filterHome),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _nearByThrapist() {
    return Container(
        child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              Text(
                'Nearby Therapist',
                style: TextStyle(
                    color: Color(0xFF313D56),
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
              Spacer(),
              Text(
                'See all',
                style: TextStyle(
                    color: Color(0xFF8AC185),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Container(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _nearbyTherapist.length,
            itemBuilder: (context, index) => _nearbyTherapistWidget(index),
          ),
        ),
      ],
    ));
  }

  Widget _textRowMassage() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.only(top: 40.0),
      child: Row(
        children: [
          Text(
            'Message services',
            style: TextStyle(
                color: Color(0xFF313D56),
                fontSize: 18,
                fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }

  Widget _nearbyTherapistWidget(index) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 16),
      child: Column(
        children: [
          Container(
            height: 220,
            width: 150,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              color: Color(0XFFF5F5F5),
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                      aspectRatio: 9.0 / 9.2,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(9, 0, 9, 0),
                        child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            margin: EdgeInsets.only(top: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25.0),
                              child: Image.asset(
                                _nearbyTherapist[index].image,
                                fit: BoxFit.fill,
                              ),
                            )
//                            Image.asset(
//                              _nearbyTherapist[index].image,
//                              fit: BoxFit.fill,
//                            ),
                            ),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _nearbyTherapist[index].name,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            SvgPicture.asset(SvgIcons.starThin),
                            SizedBox(width: 5.0),
                            Text(
                              _nearbyTherapist[index].rating,
                              style: TextStyle(fontSize: 15),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SvgPicture.asset(SvgIcons.mapRoute),
                            ),
                            Text(
                              _nearbyTherapist[index].km,
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _massageservice(index) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 10.0,left: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          clipBehavior: Clip.antiAlias,
          child: FittedBox(
              child: Stack(alignment: Alignment.center, children: [
            ColorFiltered(
                colorFilter: ColorFilter.mode(
                    Color(0XFF313D56).withOpacity(0.7), BlendMode.color),
                child: FittedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24.0),
                    child: Image.asset(
                    _massageList[index].image,
                  ),
                  ),
                  fit: BoxFit.fill,
                )),
            FittedBox(
              child: Text(
                _massageList[index].name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              fit: BoxFit.fill,
            ),
          ]))),
    );
  }

  Widget _adBanner(index) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      width: MediaQuery.of(context).size.width / 1.2,
      child: ClipRRect(
          child: Image.asset(
        _bannerList[index].image,
      )),
    );
  }

  _modalBottomSheet() {
    return showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(15),
          height: 420,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: LabeledTextField(
                        controller: searchDate,
                        label: 'Date',
                        suffix: true,
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(SvgIcons.calendar),
                        ),
                        hintText: 'Select date',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: LabeledTextField(
                        controller: searchTime,
                        label: 'Time',
                        suffix: true,
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(SvgIcons.timeSearch),
                        ),
                        hintText: 'Select time',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: LabeledTextField(
                  controller: searchDate,
                  label: 'Type of Message',
                  suffix: true,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SvgPicture.asset(SvgIcons.drop),
                  ),
                  hintText: 'Select Type of Message',
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: LabeledTextField(
                  controller: searchDate,
                  label: 'Location',
                  suffix: true,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(SvgIcons.locationSearch),
                  ),
                  hintText: 'Select Location',
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: GreenUserButton(
//                  onPressed: () {
//                    Navigator.push(
//                        context,
//                        MaterialPageRoute(
//                            builder: (context) => HomeUser(),
//                            ));
//                  },
                  label: 'Search',
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(),
              _infoHead(),
              _search(),
              _nearByThrapist(),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _bannerList.length,
                  itemBuilder: (context, index) => _adBanner(index),
                ),
              ),
              _textRowMassage(),
              Container(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _massageList.length,
                  itemBuilder: (context, index) => _massageservice(index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final therapists = [
    "demo1",
    "demo2",
    "demo3",
    "demo4",
    "demo5",
    "demo6",
  ];
  final recentTherapists = [
    "demo11",
    "demo21",
    "demo31",
    "demo41",
    "demo51",
    "demo61",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? recentTherapists
        : therapists.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
          onTap: () {
            showResults(context);
          },
          leading: Icon(Icons.add_comment),
          title: RichText(
            text: TextSpan(
                text: suggestions[index].substring(0, query.length),
                style: TextStyle(
                  color: Colors.black87,
                ),
                children: [
                  TextSpan(
                      text: suggestions[index].substring(query.length),
                      style: TextStyle(color: Colors.grey))
                ]),
          )),
      itemCount: suggestions.length,
    );
  }
}

class NearbyTherapist {
  String name;
  String image;
  String rating;
  String km;

  NearbyTherapist({@required this.name, this.image, this.rating, this.km});
}

class MassageServices {
  String name;
  String image;

  MassageServices({@required this.name, this.image});
}
class MassageServicesName {
  String name;
  String image;

  MassageServicesName({@required this.name, this.image});
}

class BannerList {
  String name;
  String image;

  BannerList({@required this.name, this.image});
}

class User {
  String name;
  String image;
  String location;

  User({@required this.name, this.image, this.location});
}
