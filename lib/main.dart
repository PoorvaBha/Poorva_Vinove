import 'package:flutter/material.dart';
import 'NavBar.dart';
import 'all_member.dart'; // Ensure this path is correct
import 'dart:math' as math;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendance',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ATTENDANCE'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
      drawer: const NavBar(), // Include your NavBar here
      body: Column(
        children: [
          // All Members and Date Picker Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.indigo[100],
                      child: const Icon(Icons.groups_3, color: Colors.white),
                    ),
                    const SizedBox(width: 10),
                    TextButton(
                      onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AllMembersScreen()),
                        );
                      },
                      child:const Text(
                      'All Members',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllMembersScreen()),
                  );},
                  child: const Text(
                    'Change',
                    style: TextStyle(color: Colors.purple),
                  ),
                )
              ],
            ),
          ),

          // Date Picker Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.calendar_today_outlined, color: Colors.purple),
                    SizedBox(width: 10),
                    Text(
                      'Tue, Aug 31 2022',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.calendar_month, color: Colors.grey),
                  onPressed: () {
                    // Date picker logic
                  },
                ),
              ],
            ),
          ),

          // List of members
          Expanded(
            child: ListView(
              children: const [
               Flexible(child:   MemberCard(
                 imageUrl: 'assets/avatar2.jpg',
                 name: 'Wade Warren',
                 id: 'WSL0003',
                 checkInTime: '09:30 am',
                 checkOutTime: '06:40 pm',
                 status: 'WORKING',
                 statusColor: Colors.green,
               ),),
                Divider(),
                Flexible(child: MemberCard(
                  imageUrl: 'assets/avtar.png',
                  name: 'Esther Howard',
                  id: 'WSL0034',
                  checkInTime: '09:30 am',
                  checkOutTime: '06:40 pm',
                  status: 'Logged Out',
                  statusColor: Colors.red,
                ),),
                Divider(),
                Flexible(child: MemberCard(
                  imageUrl: 'assets/man3.jpg',
                  name: 'Cameron Williamson',
                  id: 'WSL0054',
                  checkInTime: 'Not logged in yet',
                  status: 'Not Logged-in Yet',
                  statusColor: Colors.grey,
                ),),
                Divider(),
                Flexible(child: MemberCard(
                  imageUrl: 'assets/man2.jpg',
                  name: 'Brooklyn Simmons',
                  id: 'WSL0076',
                  checkInTime: '09:30 am',
                  checkOutTime: '06:40 pm',
                  status: 'Logged Out',
                  statusColor: Colors.red,
                ),),
                Divider(),
                Flexible(child: MemberCard(
                  imageUrl: 'assets/savannah.jpg',
                  name: 'Savannah Nguyen',
                  id: 'WSL0065',
                  checkInTime: '09:30 am',
                  checkOutTime: '06:40 pm',
                  status: 'Logged Out',
                  statusColor: Colors.red,
                ),),
                Divider(),
                Flexible(child:MemberCard(
                  imageUrl: 'assets/lisa.jpg',
                  name: 'Leslie Alexander',
                  id: 'WSL0069',
                  checkInTime: '09:30 am',
                  checkOutTime: '06:40 pm',
                  status: 'Logged Out',
                  statusColor: Colors.red,
                ),),
                Divider(),
                Expanded(child:MemberCard(
                  imageUrl: 'assets/manimg1.png',
                  name: 'Kathryn Murphy',
                  id: 'WSL0095',
                  checkInTime: '09:30 am',
                  checkOutTime: '06:40 pm',
                  status: 'Logged Out',
                  statusColor: Colors.red,
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget for each member's card
class MemberCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String id;
  final String checkInTime;
  final String? checkOutTime;
  final String status;
  final Color statusColor;

  const MemberCard({
    required this.imageUrl,
    required this.name,
    required this.id,
    required this.checkInTime,
    this.checkOutTime,
    required this.status,
    required this.statusColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User profile picture
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(imageUrl), // Use your local image path
          ),
          const SizedBox(width: 10),

          // User details (Name, ID, Check-In/Out Time, Status)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Member Name and ID
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '($id)',
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),

                        // Check-in and check-out times + status on the same line
                        Row(
                          children: [
                            const Icon(Icons.arrow_outward_outlined, color: Colors.green, size: 16),
                            const SizedBox(width: 5),
                            Text(checkInTime),
                            if (checkOutTime != null) ...[
                              const SizedBox(width: 20),
                              Transform.rotate(
                                angle: -math.pi / 4, // Rotate the icon by 45 degrees (π/4 radians)
                                child: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.red,
                                  size: 16,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(checkOutTime!),
                              const SizedBox(width: 10),
                              Text(
                                status,
                                style: TextStyle(color: statusColor),
                              ),
                            ],
                          ],
                        ),
                      ],
                    ),

                    // Event and Settings icons on the same row, aligned right
                    const Row(
                      children: [
                        Icon(Icons.event_note, color: Colors.grey),
                        SizedBox(width: 9),
                        Icon(Icons.settings, color: Colors.grey),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}