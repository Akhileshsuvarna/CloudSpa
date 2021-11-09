import 'package:cloud_spa/screens/therapist/profile/information_edit.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Information extends StatefulWidget {
  const Information({Key key}) : super(key: key);

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return CloudSpaScaffold(
      action: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 16.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InformationEdit(),
                  ));
            },
            child: Text(
              'Edit',
              style: TextStyle(
                color: Color(0xFFF96289),
              ),
            ),
          ),
        )
      ],
      isback: true,
      title: 'Information',
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 52.5,
                    backgroundColor: Color(0xffF5F5F5),
                    child: SvgPicture.asset(SvgIcons.profile),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SvgPicture.asset(SvgIcons.profilePhotoPick),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              InformationTile(
                heading: 'Last Name',
                desc: 'Alva',
                svgpath: SvgIcons.user,
              ),
              InformationTile(
                heading: 'First Name',
                desc: 'Jessica',
                svgpath: SvgIcons.user,
              ),
              InformationTile(
                heading: 'Username',
                desc: '@alvajess',
                svgpath: SvgIcons.user,
              ),
              InformationTile(
                heading: 'Email',
                desc: 'alvajassica002@gmail.com',
                svgpath: SvgIcons.email,
              ),
              InformationTile(
                heading: 'Phone Number',
                desc: '+1 9526 0083 574',
                svgpath: SvgIcons.phone,
              ),
              InformationTile(
                heading: 'Date of Birth',
                desc: '15 December, 1998',
                svgpath: SvgIcons.profileCalendar,
              ),
              InformationTile(
                heading: 'Address',
                desc: '4517 Washington Ave. Manchester, Kentucky 39495',
                svgpath: SvgIcons.locationAddr,
              ),
              SizedBox(
                height: 40.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InformationTile extends StatelessWidget {
  final svgpath;
  final heading;
  final desc;
  const InformationTile({
    Key key,
    this.svgpath,
    this.heading,
    this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xFFF5F5F5),
            child: SvgPicture.asset(svgpath),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xFFD6D8DD)))),
              padding: EdgeInsets.only(bottom: 24, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: TextStyle(
                        color: Color(0xFF989EAA),
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                  Text(
                    desc,
                    style: TextStyle(
                        color: Color(0xFF313D56),
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
