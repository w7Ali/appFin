import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyNotificationWidget(),
  ));
}

abstract class NotificationWidget extends StatefulWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  _NotificationWidgetState createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification Widget Example'),
      ),
      body: const Center(
        child: Text('Notification Widget Content'),
      ),
    );
  }
}

class MyNotificationWidget extends NotificationWidget {
  const MyNotificationWidget({Key? key}) : super(key: key);

  // @override
  // _MyNotificationWidgetState createState() => _MyNotificationWidgetState();
}

class _MyNotificationWidgetState extends State<MyNotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Notification Widget'),
      ),
      body: const Center(
        child: Text('My Notification Widget Content'),
      ),
    );
  }
}
