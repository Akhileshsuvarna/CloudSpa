import 'package:cloud_spa/utlity_components/language_text.dart';
import 'package:flutter/material.dart';

class CloudSpaScaffold extends StatelessWidget {
  final bool isback;
  final Widget body;
  final String title;
  final List<Widget> action;

  const CloudSpaScaffold(
      {Key key, this.isback, this.body, this.title, this.action})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width / 5,
        title: Text(
          '$title',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: isback
            ? InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          Texts.back,
                          style: TextStyle(color: Colors.black,),
                        ),
                      )
                    ],
                  ),)
            : null,
        actions: action,
      ),
      body: body,
    );
  }
}
