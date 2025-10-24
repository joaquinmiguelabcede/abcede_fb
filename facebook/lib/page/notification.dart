import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<Map<String, dynamic>> notifications = [
    {
      'avatar': 'assets/profile1.jpg',
      'title': 'John Doe liked your post',
      'subtitle': '2 hours ago',
    },
    {
      'avatar': 'assets/profile2.jpg',
      'title': 'Jane Smith commented on your photo',
      'subtitle': '4 hours ago',
    },
    {
      'avatar': 'assets/profile3.jpg',
      'title': 'Mike Johnson shared your post',
      'subtitle': '1 day ago',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        actions: [
        
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () { 
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage(notifications[index]['avatar']),
                      radius: 25,
                    ),
                    title: Text(
                      notifications[index]['title'],
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text(
                      notifications[index]['subtitle'],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.more_horiz),
                      onPressed: () {
                      },
                    ),
                    onTap: () {
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
