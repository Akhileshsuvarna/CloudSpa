import 'package:cloud_spa/widgets/green_user_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:file_picker/file_picker.dart';
import 'Therapistbooking/addresspage.dart';

class UplaodDoc extends StatefulWidget {
  @override
  _UplaodDocState createState() => _UplaodDocState();
}
class _UplaodDocState extends State<UplaodDoc> {
  @override
  bool loaded = true;
  bool loaded1 = false;
  String pathname=" ";
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        elevation: 0,
        title: Row(children: <Widget>[
          new SvgPicture.asset(SvgIcons.back),
          new Container(
              margin: const EdgeInsets.only(left: 10),
              child: new Text(
                'Back',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SfUiDisplayLight',
                    fontWeight: FontWeight.w400),
              )),
        ]),
        backgroundColor: Colors.white,
      ),
      body: body(),
    );
  }
  body(){
    return SingleChildScrollView(
      child: Container(
          child: Column(
            children: [
            Visibility(
            visible: loaded,
              child: Container(
                width:
                        MediaQuery.of(context)
                            .size
                            .width/2,
                height:
                  MediaQuery.of(context)
                  .size
                  .height/3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Image.asset('assets/images/zeropercentage.jpg'),
              ),
            ),
              Visibility(
                visible: loaded1,
                child:Container(
                  width:
                  MediaQuery.of(context)
                      .size
                      .width/2,
                  height:
                  MediaQuery.of(context)
                      .size
                      .height/3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(top: 10.0),
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/hundredpercentage.jpg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Upload ID Card',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Color(0xFF313D56),),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                '''Upload your id card for the first time booking 
 & Appointment''',
                textAlign: TextAlign.center,
                maxLines: 15,
                style: TextStyle(fontSize: 15,fontFamily: 'SfUiDisplayLight',color: Color(0xFF313D56)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:
                Visibility(
                  visible: loaded1,
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        border: Border.all( color: Color(0xff313D56).withOpacity(0.4))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Row(
                    children: [
                        Image.asset(
                          'assets/images/pathimg.jpg',
                          fit: BoxFit.fill,width: 27,height: 27,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          pathname,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                    ],
                    ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child:
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),

                  child: GestureDetector(
                    onTap: () async {
                      FilePickerResult result = await FilePicker.platform.pickFiles(type:FileType.any,);

                      if(result != null) {
                        PlatformFile file = result.files.first;
                        print(file.name);
                        print(file.bytes);
                        print(file.size);
                        print(file.extension);
                        print(file.path);
                        setState(() {
                          loaded1 = true;
                          loaded = false;
                          pathname=file.name.toString();
                        });
                      } else {
                        // User canceled the picker
                      }
                    },
                    child:Image.asset(
                      'assets/images/choosefileimage.jpg',
                      fit: BoxFit.fill,
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric (horizontal:20.0),
                child:  GreenUserButton(
                  onPressed: () {
                    if(loaded1==false)
                      {}
                    else{
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => AddAddress(),
                         ));}
                  },
                  label: 'Next',
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )
      ),
    );
  }
}
