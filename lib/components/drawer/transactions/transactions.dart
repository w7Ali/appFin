import 'package:financeapp/components/drawer/transactions/Expenses/ExpensePageDetails.dart';
import 'package:financeapp/components/drawer/transactions/Income/IncomePageDetails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Transaction(),
    );
  }
}

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Transaction',
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
      body: SingleChildScrollView(
        
        scrollDirection: Axis.horizontal,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const IncomingPageDetails(),
                  ));
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        padding: const EdgeInsets.all(58.0),
                        color: Colors.blue,
                        child: const Text(
                          'Incomes',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16.0),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ExpensePageDetails(),
                  ));
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        padding: const EdgeInsets.all(59.0),
                        color: const Color.fromARGB(255, 16, 47, 16),
                        child: const Text(
                          'Expenses',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0)
              // child:
            ],
          ),
        ),
      ),
    );
    
  }
}
