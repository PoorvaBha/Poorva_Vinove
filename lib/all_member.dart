import 'package:flutter/material.dart';

class AllMembersScreen extends StatelessWidget {
  const AllMembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Members'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                // Implement search functionality here
              },
            ),
          ),

          // Section Header for "All Members"
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.purple, width: 5),
                ),
              ),
              child: Row(
                children: const [
                  Icon(Icons.group, color: Colors.purple),
                  SizedBox(width: 8),
                  Text(
                    'All Members',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),
                  ),
                ],
              ),
            ),
          ),

          // Member list
          Expanded(
            child: ListView(
              children: [
                _buildMemberCard('Mohit Malik', 'assets/avatar3.png'),
                _buildMemberCard('Nitesh Pandey', 'assets/avatar3.png'),
                _buildMemberCard('Vishad Sharma', 'assets/avatar3.png'),
                _buildMemberCard('Vinove Kumar Shukla', 'assets/avatar3.png'),
                _buildMemberCard('Maneesh Malhotra', 'assets/avatar3.png'),
                _buildMemberCard('Elizabeth Swann', 'assets/avatar4.png'),
                _buildMemberCard('Robert Downey', 'assets/manimg1.png'),
                _buildMemberCard('Francis Diakowsky', 'assets/avatar4.png'),
              ],
            ),
          ),

          // A-Z letters section (placeholder)
          // Implement the A-Z letters section here
        ],
      ),
    );
  }

  // Member card builder method
  Widget _buildMemberCard(String name, String imageUrl) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageUrl),
        onBackgroundImageError: (_, __) {
          // Fallback in case of error loading image
          print('Failed to load image for $name');
        },
      ),
      title: Text(name),
      onTap: () {
        // Handle member card tap here
      },
    );
  }
}
