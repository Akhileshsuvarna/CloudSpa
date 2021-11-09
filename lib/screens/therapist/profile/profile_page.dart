import 'package:cloud_spa/screens/therapist/profile/certificates.dart';
import 'package:cloud_spa/screens/therapist/profile/contact.dart';
import 'package:cloud_spa/screens/therapist/profile/information.dart';
import 'package:cloud_spa/screens/therapist/profile/select_language.dart';
import 'package:cloud_spa/screens/therapist/profile/settings.dart';

import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return CloudSpaScaffold(
      title: 'Profile',
      isback: true,
      body: SingleChildScrollView(
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
            Text(
              'Jessica Alva',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              '@alvajass',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 16,
            ),
            ProfilePageTile(
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Information(),
                    ));
              },
              title: 'Information',
              svgIcon: SvgIcons.user,
            ),
            ProfilePageTile(
              onpressed: () {},
              title: 'Bank Account',
              svgIcon: SvgIcons.bank,
            ),
            ProfilePageTile(
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Certificates(),
                    ));
              },
              title: 'Certificates',
              svgIcon: SvgIcons.certificate,
            ),
            ProfilePageTile(
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectLanguage(),
                    ));
              },
              title: 'Language',
              svgIcon: SvgIcons.language,
            ),
            ProfilePageTile(
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Settings(),
                    ));
              },
              title: 'Settings',
              svgIcon: SvgIcons.settings,
            ),
            ProfilePageTile(
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactUs(),
                    ));
              },
              title: 'Contact us',
              svgIcon: SvgIcons.contact,
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 8),
              // width: double.infinity,
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width / 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.05, 1],
                  colors: [
                    Color(0xFFF96289),
                    Color(0xFF3F5EFB),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(SvgIcons.logout),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Logut',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 37,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePageTile extends StatelessWidget {
  final svgIcon;
  final title;
  final onpressed;
  const ProfilePageTile({
    Key key,
    this.svgIcon,
    this.title,
    this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Color.fromRGBO(63, 94, 251, 0.3),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(svgIcon),
            SizedBox(
              width: 16,
            ),
            Text(title),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff2F3137),
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
