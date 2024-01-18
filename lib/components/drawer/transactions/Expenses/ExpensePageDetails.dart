import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExpensePageDetails(),
    );
  }
}

class ExpensePageDetails extends StatefulWidget {
  const ExpensePageDetails({Key? key}) : super(key: key);

  @override
  _ExpensePageDetailsState createState() => _ExpensePageDetailsState();
}

class _ExpensePageDetailsState extends State<ExpensePageDetails> {
  // You can add your variables and methods here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses',
        style: TextStyle(color: Color.fromARGB(255, 246, 245, 245)),
        ),
        backgroundColor: const Color.fromARGB(255, 54, 112, 159),
        toolbarHeight: 55,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60.0),
            bottomRight: Radius.circular(60.0),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 26.0),
            child: SizedBox(),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add your widgets here
            Text(
              'badhe besaram ho fir se muh uthake agye!',
              style: TextStyle(fontSize: 20),
            ),
            // You can add more widgets or customize as needed
          ],
        ),
      ),
    );
  }
}
