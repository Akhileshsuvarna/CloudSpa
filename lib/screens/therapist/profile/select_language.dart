import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key key}) : super(key: key);

  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  @override
  Widget build(BuildContext context) {
    return CloudSpaScaffold(
      isback: true,
      title: 'Language',
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            SvgPicture.asset(SvgIcons.translate),
            SizedBox(
              height: 32,
            ),
            Text(
              'Profile Setup',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF313D56)),
            ),
            SizedBox(
              height: 40,
            ),
            LanguageTile(
              isSelected: true,
              name: '日本人 (Japanese)',
              svgIcons: SvgIcons.japanese,
              // image: 'assets/images/japanese.png',
            ),
            SizedBox(
              height: 24,
            ),
            LanguageTile(
              isSelected: false,
              name: 'English (United States English)',
              svgIcons: SvgIcons.usa,
              // image: 'assets/images/usa.png',
            ),
          ],
        ),
      ),
    );
  }
}

class LanguageTile extends StatelessWidget {
  // final image;
  final svgIcons;
  final name;
  final isSelected;
  const LanguageTile({
    Key key,
    // this.image,
    this.svgIcons,
    this.name,
    this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
            color: isSelected ? Color(0xFF3F5EFB) : Color(0xFFD6D8DD),
            width: 2),
      ),
      child: Row(
        children: [
          SvgPicture.asset(svgIcons),
          // Image.file(),
          SizedBox(
            width: 16,
          ),
          Text(
            name,
            style: TextStyle(
                color: Color(0xFF313D56),
                fontWeight: FontWeight.w500,
                fontSize: 14),
          )
        ],
      ),
    );
  }
}
