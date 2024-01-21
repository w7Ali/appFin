import 'package:financeapp/components/drawer/settings/setting.dart';
import 'package:financeapp/components/drawer/transactions/transactions.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 38, 83, 120),
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
                  return SearchBar(
                    controller: controller,
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
                suggestionsBuilder: (BuildContext context, SearchController controller) {
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
            color: Colors.black38,
          ),
        ],
      ),
       drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Rajesh'),
              accountEmail: Text('rajesh120@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 38, 83, 120),
              ),
              otherAccountsPictures: [
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   // child: IconButton(
                //   //   icon: const Icon(Icons.add),
                //   //   color: Colors.black,
                //   //   onPressed: () {
                //   //     // Handle adding the user's image
                //   //   },
                //   // ),
                // ),
              ],
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
              title: const Text('Task'),
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
              title: const Text('Documents'),
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
                  MaterialPageRoute(builder: (context) => const SettingsPageDetails()),
                );
              },
            ),
          ],
        
        ),
      ),

      body: const Center(
        

      ),
    );
  }
}
