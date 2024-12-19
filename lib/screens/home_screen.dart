import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> chats = [
    {
      "name": "Alice",
      "time": "9:15 am",
      "description": "Let's catch up tomorrow!",
      "profilePic":
      "https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?q=80&w=3166&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    {
      "name": "Bob",
      "time": "10:45 am",
      "description": "Meeting at 2 PM?",
      "profilePic":
      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400"
    },
    {
      "name": "Charlie",
      "time": "1:30 pm",
      "description": "Can you send the files?",
      "profilePic":
      "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400"
    },
    {
      "name": "Diana",
      "time": "3:20 pm",
      "description": "Great job on the project!",
      "profilePic":
      "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400"
    },
    {
      "name": "Eve",
      "time": "6:10 pm",
      "description": "Can you call me later?",
      "profilePic":
      "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=400"
    },
    {
      "name": "Kiran",
      "time": "6:50 pm",
      "description": "Can you meet later?",
      "profilePic":
      "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        titleTextStyle: GoogleFonts.openSans(
          color: Colors.green,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: chats.length,
          itemBuilder: (context, index) {
            final chat = chats[index];
            return Column(
              children: [
                ListTile(
                  trailing: Text(
                    chat["time"]!,
                    style: GoogleFonts.openSans(
                      color: Colors.grey.shade700,
                      fontSize: 10,
                    ),
                  ),
                  title: Text(chat["name"]!),
                  titleTextStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  subtitle: Text(chat["description"]!),
                  subtitleTextStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                    fontSize: 12,
                  ),
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(chat["profilePic"]!),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
