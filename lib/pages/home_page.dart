// import 'dart:convert';

// import 'package:financeapp/components/drawer/settings/setting.dart';
// import 'package:financeapp/components/drawer/transactions/transactions.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   static const Color primaryColor = Color.fromARGB(255, 38, 83, 120);
//   static const Color accentColor = Colors.black38;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: primaryColor,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(top: 18.0, bottom: 14.0),
//             child: ConstrainedBox(
//               constraints: const BoxConstraints(
//                 minWidth: 100.0,
//                 maxWidth: 300.0,
//               ),
//               child: SearchAnchor(
//                 builder: (BuildContext context, SearchController controller) {
//                   return SearchBar(
//                     controller: controller,
//                     padding: const MaterialStatePropertyAll<EdgeInsets>(
//                       EdgeInsets.symmetric(horizontal: 8.0),
//                     ),
//                     onTap: () {
//                       controller.openView();
//                     },
//                     onChanged: (_) {
//                       controller.openView();
//                     },
//                     leading: const Icon(Icons.search),
//                     hintText: 'Search',
//                   );
//                 },
//                 suggestionsBuilder:
//                     (BuildContext context, SearchController controller) {
//                   return List.generate(5, (int index) {
//                     final String item = 'Item $index';
//                     return ListTile(
//                       title: Text(item),
//                       onTap: () {
//                         setState(() {
//                           controller.closeView(item);
//                         });
//                       },
//                     );
//                   });
//                 },
//               ),
//             ),
//           ),
//           IconButton(
//             icon: const Icon(Icons.notifications),
//             onPressed: () {
//               // Implement notification functionality
//             },
//             color: accentColor,
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const UserAccountsDrawerHeader(
//                 accountName: Center(
//                   child: Text(
//                     'Rajesh',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//                 accountEmail: Center(
//                   child: Text('rajesh120@gmail.com'),
//                 ),
//                 currentAccountPicture: FlutterLogo()
//                 // CircleAvatar(
//                 //   backgroundColor: Colors.white,
//                 //   child: Center(
//                 //       child: Icon(
//                 //     Icons.person,
//                 //     color: Colors.black,
//                 //   )),
//                 // ),

//                 // decoration: BoxDecoration(
//                 //   color: primaryColor,
//                 // ),
//                 // otherAccountsPictures: [
//                 //   CircleAvatar(
//                 //     backgroundColor: Colors.white,
//                 //     child: IconButton(
//                 //       icon: Icon(Icons.add),
//                 //       color: Colors.black,
//                 //       // onPressed: () {
//                 //       //   // Handle
//                 //       // },
//                 //     ),
//                 //   ),
//                 // ],
//                 ),
//             const SizedBox(height: 16.0),
//             ListTile(
//               title: const Text('Home'),
//               leading: SvgPicture.asset(
//                 'assets/home.svg',
//                 width: 24,
//                 height: 24,
//               ),
//               onTap: () {
//                 // Handle drawer item 1 click
//               },
//             ),
//             ListTile(
//               title: const Text('Transaction'),
//               leading: SvgPicture.asset(
//                 'assets/transaction.svg',
//                 width: 24,
//                 height: 24,
//               ),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Transaction()),
//                 );
//               },
//             ),
//             ListTile(
//               title: const Text('Accounts'),
//               leading: SvgPicture.asset(
//                 'assets/docs.svg',
//                 width: 24,
//                 height: 24,
//               ),
//               onTap: () {
//                 // Handle drawer item 2 click
//               },
//             ),
//             ListTile(
//               title: const Text('Tasks'),
//               leading: SvgPicture.asset(
//                 'assets/task.svg',
//                 width: 24,
//                 height: 24,
//               ),
//               onTap: () {
//                 // Handle drawer item 2 click
//               },
//             ),
//             ListTile(
//               title: const Text('Store'),
//               leading: SvgPicture.asset(
//                 'assets/store.svg',
//                 width: 24,
//                 height: 24,
//               ),
//               onTap: () {
//                 // Handle drawer item 2 click
//               },
//             ),
//             const Divider(),
//             ListTile(
//               title: const Text('Settings'),
//               leading: SvgPicture.asset(
//                 'assets/settings.svg',
//                 width: 24,
//                 height: 24,
//               ),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const SettingsPageDetails()),
//                 );
//               },
//             ),
//             ListTile(
//               title: const Text('Feedback'),
//               leading: SvgPicture.asset(
//                 'assets/feedback.svg',
//                 width: 24,
//                 height: 24,
//               ),
//             )
//           ],
//         ),
//       ),
//       body: Container(
//         color: Colors.grey,
//         padding: const EdgeInsets.all(57.0),
//         child: SizedBox(
//           height: 300.0,
//           width: 300.0, // Set the desired height for the card
//           child: Card(
//             elevation: 4.0,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             child: const Padding(
//               padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     '2500/rs',
//                     style: TextStyle(
//                       fontSize: 18.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8.0),
//                   Text(
//                     'Start managing your finances today.',
//                     style: TextStyle(fontSize: 16.0),
//                   ),
//                   SizedBox(height: 16.0),
//                   Divider(),
//                   Text(
//                     'Welcome to Finance App!',
//                     style: TextStyle(
//                       fontSize: 18.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8.0),
//                   Text(
//                     'Start managing your finances today.',
//                     style: TextStyle(fontSize: 16.0),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';

import 'package:financeapp/components/drawer/settings/setting.dart';
import 'package:financeapp/components/drawer/transactions/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fl_chart/fl_chart.dart'; // Import the fl_chart package

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const Color primaryColor = Color.fromARGB(255, 38, 83, 120);
  static const Color accentColor = Colors.black38;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0, bottom: 14.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 100.0,
                maxWidth: 300.0,
              ),
              child: SearchAnchor(
                builder: (BuildContext context, SearchController controller) {
                  var Controller;
                  return SearchBar(
                    controller: Controller,
                    padding: const MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    onTap: () {
                      controller.openView();
                    },
                    onChanged: (_) {
                      controller.openView();
                    },
                    leading: const Icon(Icons.search),
                    hintText: 'Search',
                  );
                },
                suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
                  return List.generate(5, (int index) {
                    final String item = 'Item $index';
                    return ListTile(
                      title: Text(item),
                      onTap: () {
                        setState(() {
                          controller.closeView(item);
                        });
                      },
                    );
                  });
                },
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Implement notification functionality
            },
            color: accentColor,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Center(
                child: Text(
                  'Rajesh',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              accountEmail: Center(
                child: Text('rajesh120@gmail.com'),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            const SizedBox(height: 16.0),
            ListTile(
              title: const Text('Home'),
              leading: SvgPicture.asset(
                'assets/home.svg',
                width: 24,
                height: 24,
              ),
              onTap: () {
                // Handle drawer item 1 click
              },
            ),
            ListTile(
              title: const Text('Transaction'),
              leading: SvgPicture.asset(
                'assets/transaction.svg',
                width: 24,
                height: 24,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Transaction()),
                );
              },
            ),
            ListTile(
              title: const Text('Accounts'),
              leading: SvgPicture.asset(
                'assets/docs.svg',
                width: 24,
                height: 24,
              ),
              onTap: () {
                // Handle drawer item 2 click
              },
            ),
            ListTile(
              title: const Text('Tasks'),
              leading: SvgPicture.asset(
                'assets/task.svg',
                width: 24,
                height: 24,
              ),
              onTap: () {
                // Handle drawer item 2 click
              },
            ),
            ListTile(
              title: const Text('Store'),
              leading: SvgPicture.asset(
                'assets/store.svg',
                width: 24,
                height: 24,
              ),
              onTap: () {
                // Handle drawer item 2 click
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Settings'),
              leading: SvgPicture.asset(
                'assets/settings.svg',
                width: 24,
                height: 24,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsPageDetails()),
                );
              },
            ),
            ListTile(
              title: const Text('Feedback'),
              leading: SvgPicture.asset(
                'assets/feedback.svg',
                width: 24,
                height: 24,
              ),
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.grey,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 200.0,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(show: false),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  minX: 0,
                  maxX: 7,
                  minY: 0,
                  maxY: 6,
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 3),
                        FlSpot(1, 1),
                        FlSpot(2, 4),
                        FlSpot(3, 2),
                        FlSpot(4, 5),
                        FlSpot(5, 1),
                        FlSpot(6, 4),
                      ],
                      isCurved: true,
                      colors: [Colors.blue],
                      dotData: FlDotData(show: false),
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 300.0,
              width: 300.0,
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '2500/rs',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Start managing your finances today.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 16.0),
                      Divider(),
                      Text(
                        'Welcome to Finance App!',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Start managing your finances today.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchAnchor extends StatelessWidget {
  final Widget Function(BuildContext context, SearchController controller)
      builder;
  final Widget Function(BuildContext context, SearchController controller)
      suggestionsBuilder;

  const SearchAnchor(
      {Key? key, required this.builder, required this.suggestionsBuilder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = SearchController();
    return builder(context, controller);
  }
}

class SearchController {
  void openView() {
    // Add your logic for opening the search view
  }

  void closeView(String selectedItem) {
    // Add your logic for closing the search view
  }
}

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final MaterialStateProperty<EdgeInsets> padding;
  final VoidCallback onTap;
  final ValueChanged<String> onChanged;
  final Widget leading;
  final String hintText;

  const SearchBar({
    Key? key,
    required this.controller,
    required this.padding,
    required this.onTap,
    required this.onChanged,
    required this.leading,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding.resolve({}),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          leading,
          const SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              controller: controller,
              onTap: onTap,
              onChanged: onChanged,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
