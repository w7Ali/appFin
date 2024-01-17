import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IncomingPageDetails(),
    );
  }
}

class IncomingPageDetails extends StatefulWidget {
  const IncomingPageDetails({Key? key}) : super(key: key);

  @override
  _IncomingPageDetailsState createState() => _IncomingPageDetailsState();
}

class _IncomingPageDetailsState extends State<IncomingPageDetails> {
  // You can add your variables and methods here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Incoming Page'),
        backgroundColor: const Color.fromARGB(255, 38, 83, 120),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add your widgets here
            Text(
              'kya bhai kaise ho?!',
              style: TextStyle(fontSize: 20),
            ),
            // You can add more widgets or customize as needed
          ],
        ),
      ),
    );
  }
}
