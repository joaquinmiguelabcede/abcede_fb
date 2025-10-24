import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  final VoidCallback? onPostcreated; 
  const CreatePost({super.key, this.onPostcreated});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage("assets/profile/prof2.jpg"),
    ),
    title: TextField(
      decoration: InputDecoration(
        hintText: "whats on your mind",
        border: InputBorder.none,
      ),
    ),
    trailing: Icon(Icons.image),
   );
  }
}

