import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  // Variable to track the selected index
  int _selectedIndex = 1; // Default to Attendance

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Fixed UserAccountsDraweconst rHeader
          // const Row(
          //   children: [
          //     Icon(Icons.time_to_leave),
          //     Text('workstatus'),
          //   ],
          // ),
          UserAccountsDrawerHeader(
            accountName: const Text('Poorva Bhardwaj'),
            accountEmail: const Text('poorvabhardwaj07@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.purple,
              child: ClipOval(
                child: Image.asset(
                  'assets/lisa.jpg', // Update this path as needed
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Scrollable List of items
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                ListTile(
                  leading: const Icon(Icons.timer),
                  title: const Text('Timer'),
                  selected: _selectedIndex == 0,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.check_circle),
                  title: const Text('Attendance'),
                  selected: _selectedIndex == 1,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.timeline_sharp), // Updated icon here
                  title: const Text('Activity'),
                  selected: _selectedIndex == 2,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 2; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.assignment),
                  title: const Text('Timesheet'),
                  selected: _selectedIndex == 3,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 3; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.report),
                  title: const Text('Report'),
                  selected: _selectedIndex == 4,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 4; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.work),
                  title: const Text('Jobsite'),
                  selected: _selectedIndex == 5,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 5; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.group),
                  title: const Text('Team'),
                  selected: _selectedIndex == 6,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 6; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.access_time),
                  title: const Text('Time off'),
                  selected: _selectedIndex == 7,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 7; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.schedule),
                  title: const Text('Schedules'),
                  selected: _selectedIndex == 8,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 8; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.request_page),
                  title: const Text('Request to join Organization'),
                  selected: _selectedIndex == 9,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 9; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.lock),
                  title: const Text('Change Password'),
                  selected: _selectedIndex == 10,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 10; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  selected: _selectedIndex == 11,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 11; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.help),
                  title: const Text('FAQ & Help'),
                  selected: _selectedIndex == 12,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 12; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.policy),
                  title: const Text('Privacy Policy'),
                  selected: _selectedIndex == 13,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 13; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text('Version: 2. 10(1)'),
                  selected: _selectedIndex == 14,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 14; // Update selected index
                    });
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

