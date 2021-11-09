import 'dart:io';

import 'package:cloud_spa/utlity_components/svg.dart';
import 'package:cloud_spa/widgets/green_user_button.dart';
import 'package:cloud_spa/widgets/phonenumber.dart';
import 'package:cloud_spa/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class ProfileSetting extends StatefulWidget {
  @override
  _ProfileSettingState createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  bool loaded = true;
  bool loaded1 = false;

  String pathname = " ";
  TextEditingController firstName = new TextEditingController();
  TextEditingController userName = new TextEditingController();
  TextEditingController lastName = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController phoneNumber = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmPassword = new TextEditingController();
  TextEditingController dateOfBirth = new TextEditingController();

  TextEditingController country = new TextEditingController();
  TextEditingController state = new TextEditingController();
  TextEditingController city = new TextEditingController();
  TextEditingController street = new TextEditingController();
  TextEditingController houseNumber = new TextEditingController();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'US'; //Initial Country Code IN -India
  PhoneNumber number = PhoneNumber(isoCode: 'US');
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

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
//      builder: (BuildContext context) {
//        return showDatePicker(
//          context: context,
//          initialDate: DateTime.now(),
//          firstDate: DateTime(2020), lastDate: DateTime(2025),);
//        print('$result');
//      },
    );
  }

  _imgFromCamera() async {
    final pickedFile = await _picker.getImage(
      source: ImageSource.camera,
      imageQuality: 50,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  _imgFromGallery() async {
    final pickedFile = await _picker.getImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
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
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Center(
                    child: _imageFile != null
                        ? Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80.0),
                              color: Colors.white,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: FileImage(
                                    File(_imageFile.path),
                                  )),
                            ),
                          )
                        : Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80.0),
                              color: Colors.white,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/profile.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          )),
                Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.width / 2.5,
                      alignment: Alignment.bottomRight,
                      child: Container(
                          width: MediaQuery.of(context).size.width / 6.5,
                          height: MediaQuery.of(context).size.width / 6.5,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Icon(Icons.brightness_1,
                                    size: 55.0, color: Colors.white),
                              ),
                              GestureDetector(
                                onTap: () async {
                                  _showPicker(context);
                                  // Image Picker
                                },
                                child: Container(
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Icon(Icons.brightness_1,
                                            size: 45.0,
                                            color: Color(0XFF8AC185)),
                                      ),
                                      Center(
                                        child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                14,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                14,
                                            child: SvgPicture.asset(
                                                SvgIcons.camera)),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ))),
                ),
              ]),
              SizedBox(height: 20.0),
              LabeledTextField(
                controller: lastName,
                label: 'Last name',
                suffix: false,
                hintText: 'Alva',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: firstName,
                label: 'First name',
                suffix: false,
                hintText: 'Jessica',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: email,
                label: 'Mail Address',
                suffix: false,
                hintText: 'alvajessica002@gmail.com',
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date of Birth',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF040415),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    onTap: ()  {
                      _modalBottomSheet();

                    },
                    controller: dateOfBirth,
                    style: TextStyle(color: Color(0xFF050A30), fontSize: 16),
                    decoration: InputDecoration(
                      hintText: 'Select Date of Birth',
                      hintStyle: TextStyle(
                          color: Color(0xFF989EAA),
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xFFD6D8DD), width: 2.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(SvgIcons.calendar),
                      ),
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
                ],
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: userName,
                label: 'UserName',
                suffix: false,
                hintText: '@alvajess',
              ),
              SizedBox(
                height: 24,
              ),
              PhoneNumberinput(
                controller: phoneNumber,
                label: 'Phone number',
                suffix: false,
                phonenumber: InternationalPhoneNumberInput(
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  ignoreBlank: false,
                  inputBorder: InputBorder.none,
                  autoValidateMode: AutovalidateMode.disabled,
                  initialValue: number,
                  textFieldController: controller,
                  formatInput: false,
                  keyboardType: TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  onInputChanged: (PhoneNumber value) {},
                ),
                hintText: 'Enter Phone number',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: country,
                label: 'Country',
                suffix: false,
                hintText: 'Japan',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: state,
                label: 'State',
                suffix: false,
                hintText: 'Select State',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: city,
                label: 'City',
                suffix: false,
                hintText: 'Select City',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: street,
                label: 'Street',
                suffix: false,
                hintText: 'Enter Street',
              ),
              SizedBox(
                height: 24,
              ),
              LabeledTextField(
                controller: houseNumber,
                label: 'House Number',
                suffix: false,
                hintText: 'Enter Street',
              ),
              SizedBox(
                height: 24,
              ),
              GreenUserButton(
//                        onPressed: () {
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                builder: (context) => HomeUser(),
//                              ));
//                        },
                label: 'Save',
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        )));
  }
}
