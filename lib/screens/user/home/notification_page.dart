import 'package:flutter/material.dart';
import 'package:cloud_spa/widgets/notification_list.dart';

class PageNotification extends StatefulWidget {
  @override
  _PageNotificationState createState() => _PageNotificationState();
}

class _PageNotificationState extends State<PageNotification> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            'Notification',
            style: TextStyle(
                color: Color(0xFF313D56),
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: LayoutBuilder(builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints:
                    BoxConstraints(minHeight: viewportConstraints.maxHeight),
                    child: Column(children: [
                      NotificationList(
                        day: 'Today',
                        therapist: '@hmjhnin02',
                        message: 'You have a order for ',
                        type: 'Thai Message',
                        time: '02:05 PM ',
                        location: '34 Main Road, Sonadanga, Khulna',
                        order: true,
                      ),
                      Divider(),
                      NotificationList(
                        day: 'Today',
                        therapist: '@hmjhnin02',
                        message: 'You have a order for ',
                        type: 'Thai Message',
                        time: '02:05 PM ',
                        location: '34 Main Road, Sonadanga, Khulna',
                        order: true,
                      ),
                      Divider(),
                      NotificationList(
                        day: 'Today',
                        therapist: '@hmjhnin02',
                        message: 'You have a order for ',
                        type: 'Thai Message',
                        time: '02:05 PM ',
                        location: '34 Main Road, Sonadanga, Khulna',
                        order: true,
                      ),
                      Divider(),
                      NotificationList(
                        day: 'Today',
                        therapist: '@hmjhnin02',
                        message: 'You have a order for ',
                        type: 'Thai Message',
                        time: '02:05 PM ',
                        location: '34 Main Road, Sonadanga, Khulna',
                        order: true,
                      ),
                      Divider(),
                      NotificationList(
                        day: 'Today',
                        therapist: '@hmjhnin02',
                        message: 'You have a order for ',
                        type: 'Thai Message',
                        time: '02:05 PM ',
                        location: '34 Main Road, Sonadanga, Khulna',
                        order: true,
                      ),
                    ]),
                  ));
            })));
  }
}
