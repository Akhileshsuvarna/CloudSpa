import 'package:cloud_spa/utlity_components/colors.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:cloud_spa/widgets/gradient_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Certificates extends StatefulWidget {
  const Certificates({Key key}) : super(key: key);

  @override
  _CertificatesState createState() => _CertificatesState();
}

class _CertificatesState extends State<Certificates> {
  TextEditingController sevice = new TextEditingController();
  int certificateCount = 1;
  @override
  Widget build(BuildContext context) {
    return CloudSpaScaffold(
      isback: true,
      title: 'Certificates',
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xFFF5F5F5),
                    child: SvgPicture.asset(SvgIcons.certificate),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 24, top: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Full Body Message Experience',
                            style: TextStyle(
                                color: Color(0xFF989EAA),
                                fontWeight: FontWeight.w300,
                                fontSize: 12),
                          ),
                          Text(
                            'FBMCertificate.pdf',
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
            ),
            InkWell(
              onTap: () {
                setState(() {
                  certificateCount += 1;
                });
              },
              child: Row(
                children: [
                  Text(
                    'Add another certificate',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF96289),
                    ),
                  ),
                  Icon(
                    Icons.add,
                    color: Color(0xffF96289),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: certificateCount,
                itemBuilder: (context, index) => Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      LabeledTextField(
                        controller: sevice,
                        label: 'Massage Service',
                        hintText: 'Select Massage Service',
                        suffix: true,
                        suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: colors.dividercolor),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset(SvgIcons.pinRed),
                            ),
                            Text(
                              'Upload ID',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFF989EAA)),
                            ),
                            Spacer(),
                            GradientIconButton(
                              iconPath: SvgIcons.upload,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
