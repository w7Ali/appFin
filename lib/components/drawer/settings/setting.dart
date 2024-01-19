// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SettingsPageDetails(),
    );
  }
}

class SettingsPageDetails extends StatefulWidget {
  const SettingsPageDetails({Key? key}) : super(key: key);

  @override
  _SettingsPageDetailsState createState() => _SettingsPageDetailsState();
}

class _SettingsPageDetailsState extends State<SettingsPageDetails> {
  bool isDarkMode = false;
  bool isFingerprintEnabled = false;
  bool isBudgetEnabled = false;
  bool isReminderEnabled = false;
  bool isPrivateEnabled = false;
  bool isLiteTrackEnabled = false;
  bool isNotificationEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(color: Color.fromARGB(255, 246, 245, 245), fontFamily: 'sans-serif'),
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
      body: Padding(
        
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                padding:EdgeInsets.only(right: 16.0),
                child: SvgPicture.asset("assets/budget.svg",
                width: 26,
                height: 26,),
                ),
                Text('Monthly Budget', style: TextStyle(color: Colors.black, 
                fontFamily: 'sans-serif', 
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
                ),
                Switch(
                  value: isBudgetEnabled,
                  onChanged: (value) {
                    setState(() {
                      isBudgetEnabled = value;
                      // Implement fingerprint toggle logic here
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                  Icon(Icons.dark_mode_rounded,),
                Text('Dark Mode:', style: TextStyle(color: Colors.black, 
                fontFamily: 'sans-serif', 
                fontWeight: FontWeight.bold,
                fontSize: 18.0),),
                Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                      // Implement dark mode toggle logic here
                    });
                  },
                ),
                
              ],
            ),
            SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.fingerprint),
                Text('Fingerprint:', style: TextStyle(color: Colors.black,
                 fontFamily: 'sans-serif', 
                 fontWeight: FontWeight.bold,
                 fontSize: 18.0),
                 ),
                Switch(
                  value: isFingerprintEnabled,
                  onChanged: (value) {
                    setState(() {
                      isFingerprintEnabled = value;
                      // Implement fingerprint toggle logic here
                    });
                  },
                ),
              ],
            ),
           
            SizedBox(height: 16.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset("assets/expense.svg",
                width: 26,
                height: 26,
                ),                // Icon(Icons.svg),
                Text('Expense Reminder', style: TextStyle(color: Colors.black,
                fontFamily: 'sans-serif', 
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
                ),
                Switch(
                  value: isReminderEnabled,
                  onChanged: (value) {
                    setState(() {
                      isReminderEnabled = value;
                      // Implement fingerprint toggle logic here
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset("assets/private.svg",
                width: 26,
                height: 26,
                ),
                Text('Private Mode', style: TextStyle(color: Colors.black, 
                fontFamily: 'sans-serif', 
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
                ),
                Switch(
                  value: isPrivateEnabled,
                  onChanged: (value) {
                    setState(() {
                      isPrivateEnabled = value;
                      // Implement fingerprint toggle logic here
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset('assets/non-expense.svg',
                width: 26,
                height: 26,
                ),
                Text('LiteTrack(non-exp..)', style: TextStyle(color: Colors.black,
                fontFamily: 'sans-serif', 
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
                ),
                Switch(
                  value: isLiteTrackEnabled,
                  onChanged: (value) {
                    setState(() {
                      isLiteTrackEnabled = value;
                      // Implement fingerprint toggle logic here
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.notification_important),
                Text('Instant Notifications:', style: TextStyle(color: Colors.black, 
                fontFamily: 'sans-serif', 
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
                ),
                Switch(
                  value: isNotificationEnabled,
                  onChanged: (value) {
                    setState(() {
                      isNotificationEnabled = value;
                      // Implement fingerprint toggle logic here
                    });
                  },
                ),
              ],
            ),
            // Add your existing ListView or any other widgets here
          ],
        ),
      ),
    );
  }
}
