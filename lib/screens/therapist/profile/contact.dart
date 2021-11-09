import 'package:cloud_spa/utlity_components/colors.dart';
import 'package:cloud_spa/widgets/cloud_spa_scaffold.dart';
import 'package:cloud_spa/widgets/gradient_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController topic = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CloudSpaScaffold(
      isback: true,
      title: 'Contact us',
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            LabeledTextField(
              controller: topic,
              label: 'Topic',
              suffix: true,
              suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
              hintText: 'Select topic',
            ),
            SizedBox(
              height: 24,
            ),
            LabeledTextField(
              controller: topic,
              label: 'Topic',
              suffix: false,
              minLines: 5,
              hintText: 'Select topic',
            ),
            Spacer(),
            GradientButton(
              label: 'Send',
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: colors.dividercolor,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'or contact on email',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: colors.dividercolor,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: new TextSpan(
                style: new TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFF313D56),
                    fontWeight: FontWeight.w500),
                children: <TextSpan>[
                  new TextSpan(text: 'Email:'),
                  new TextSpan(
                      text: ' admin@cloud-spa.com',
                      style: new TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
