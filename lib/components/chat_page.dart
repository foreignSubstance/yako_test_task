import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color darkBlue = const Color.fromARGB(255, 10, 42, 63);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: darkBlue,
          title: const Text("Chat"),
          leading: const Icon(Icons.person),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 16),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Icon(
                    Icons.maps_ugc_rounded,
                    size: 30,
                  ),
                ))
          ],
        ),
        body: null,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 15)]),
          child: BottomNavigationBar(
              elevation: 100,
              selectedItemColor: Colors.pinkAccent,
              unselectedItemColor: darkBlue,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.bold),
              items: [
                const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.chat,
                    ),
                    label: "Chat"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_none, color: darkBlue),
                    label: "Notification"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.more_horiz,
                      color: darkBlue,
                    ),
                    label: "More")
              ]),
        ),
      ),
    );
  }
}