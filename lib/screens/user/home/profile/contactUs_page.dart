import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/green_user_button.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController _subject = new TextEditingController();
  TextEditingController _message = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          'Contact Us',
          style: TextStyle(
            color: Color(0xFF313D56),
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
        body: SafeArea(
            child: SingleChildScrollView(
                child:
                Container(
                    padding: EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height/1.1,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(18),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                border: Border.all( color: Color(0xff313D56).withOpacity(0.4))
                            ),
                            child:
                                Row(
                                  children: [
                                    SvgPicture.asset(SvgIcons.mail),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      'Mail:',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Text(
                                      'lcarver@torket.net',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:50.0),
                            child: Row(children: [
                              Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(right:20.0),
                                    child: Divider(),
                                  )
                              ),

                              Text("or Message us",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),),

                              Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(left:20.0),
                                    child: Divider(),
                                  )
                              ),

                            ],),
                          ),

                          LabeledTextField(
                            controller: _subject,
                            label: 'Subject',
                            suffix: false,
                            hintText: 'Write subject',
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Message',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF040415),
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            minLines: 3,
                            maxLines: 10,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              hintText: 'Write your message ...',
                              hintStyle: TextStyle(
                                  color: Color(0xFF989EAA),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Color(0xFFD6D8DD), width: 2.0),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Color(0xFFD6D8DD),
                                  )),
                            ),
                          ),
//                          LabeledTextField(
//                            controller: _message,
//                            label: 'Message',
//                            suffix: false,
//                            hintText: 'Write your message ...',
//                          ),
                          SizedBox(
                            height: 25,
                          ),
                          GreenUserButton(
//                        onPressed: () {
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                builder: (context) => HomeUser(),
//                              ));
//                        },
                            label: 'Send',
                          ),
                        ]))))
    );
  }
}
