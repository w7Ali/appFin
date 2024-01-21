import 'package:flutter/material.dart';

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
          style: TextStyle(
            color: Color.fromARGB(255, 246, 245, 245),
            fontFamily: 'sans-serif',
          ),
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
        child: Column(
          children: [
            buildSwitchListTile(
              'Monthly Budgets',
              isBudgetEnabled,
                  (value) {
                setState(() {
                  isBudgetEnabled = value;
                });
              },
              icon: Icons.monetization_on,
            ),
            // SizedBox(height: 16.0),

            buildSwitchListTile(
              'Private Mode',
              isPrivateEnabled,
                  (value) {
                setState(() {
                  isPrivateEnabled = value;
                });
              },
              icon: Icons.security,
            ),

            buildSwitchListTile(
              'Dark Mode',
              isDarkMode,
                  (value) {
                setState(() {
                  isDarkMode = value;
                });
              },
              icon: isDarkMode ? Icons.dark_mode : Icons.light_mode,
            ),

            buildSwitchListTile(
              'App Lock',
              isFingerprintEnabled,
                  (value) {
                setState(() {
                  isFingerprintEnabled = value;
                });
              },
              icon: Icons.fingerprint,
            ),

            const ListTile(
              title: Text(
                'Widgets',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'sans',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              subtitle: Text(
                  "Stay up-to-date on expenses and due bills from your phone home screen"),
            ),
            const ListTile(
              title: Text(
                'Widgets',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'sans',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              subtitle: Text(
                  "Stay up-to-date on expenses and due bills from your phone home screen"),
            ),

            buildSwitchListTile(
              'Instant Notifications',
              isNotificationEnabled,
                  (value) {
                setState(() {
                  isNotificationEnabled= value;
                  ;
                });
              },
              icon: Icons.notification_important_rounded,
            ),

            const ListTile(
              title: Text(
                'Widgets',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'sans',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              subtitle: Text(
                  "Stay up-to-date on expenses and due bills from your phone home screen"),
            ),

            const ListTile(
              title: Text(
                'Widgets',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'sans',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              subtitle: Text(
                  "Stay up-to-date on expenses and due bills from your phone home screen"),
            ),

            const ListTile(
              title: Text(
                'Widgets',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'sans',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              subtitle: Text(
                  "Stay up-to-date on expenses and due bills from your phone home screen"),
            ),

            const ListTile(
              title: Text(
                'Widgets',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'sans',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              subtitle: Text(
                  "Stay up-to-date on expenses and due bills from your phone home screen"),
            ),

            const ListTile(
              title: Text(
                'Widgets',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'sans',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              subtitle: Text(
                  "Stay up-to-date on expenses and due bills from your phone home screen"),
            ),


          ],
        ),
      ),
    );
  }

  SwitchListTile buildSwitchListTile(
      String title,
      bool value,
      ValueChanged<bool> onChanged, {
        IconData? icon,
      }) {
    return SwitchListTile(
      title: Row(
        children: [
          if (icon != null) Icon(icon, color: Colors.black),
          SizedBox(width: icon != null ? 8.0 : 0),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'sans',
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
      value: value,
      onChanged: onChanged,
    );
  }
}
