import 'package:flutter/material.dart';
import 'chat_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> messageBoards = [
    {'name': 'General Chat', 'icon': Icons.chat},
    {'name': 'Tech Talk', 'icon': Icons.computer},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Message Boards")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Welcome")),
            ListTile(title: Text("Message Boards"), onTap: () {}),
            ListTile(title: Text("Profile"), onTap: () {}),
            ListTile(title: Text("Settings"), onTap: () {}),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: messageBoards.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(messageBoards[index]['icon']),
            title: Text(messageBoards[index]['name']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatScreen(boardName: messageBoards[index]['name'])),
              );
            },
          );
        },
      ),
    );
  }
}
