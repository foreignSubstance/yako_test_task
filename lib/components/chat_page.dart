import 'package:flutter/material.dart';
import 'search.dart';
import 'conversation.dart';

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
          leading: IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: dialogueAvatar("assets/images/1.jpg"),
            ),
            onPressed: null,
          ),
          leadingWidth: 64,
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
        body: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              searchFiled(),
              ChatLists(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 15)]),
          child: BottomNavigationBar(
              elevation: 100,
              selectedItemColor: Colors.pinkAccent,
              unselectedItemColor: darkBlue,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
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

class ChatLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return chatListView();
  }
}

Widget chatListView() {
  Conversation conv1 = Conversation(
    sender: "Michael Grant",
    lastMessage: "You: Thanks",
    label: "None",
    labelColor: null,
    labelTextColor: Colors.black,
    date: "Yesterday",
    imgPath: "assets/images/1.jpg",
    chatMemebers: 2,
  );

  Conversation conv2 = Conversation(
    sender: "Darren Swinney, Lan...",
    lastMessage: "Darren: Perhaps if there was some...",
    label: "Challenge",
    labelColor: Colors.pinkAccent,
    labelTextColor: Colors.white,
    date: "13:24",
    imgPath: "assets/images/2.jpg",
    chatMemebers: 3,
  );

  Conversation conv3 = Conversation(
    sender: "Alexander Murphy",
    lastMessage: "Alexander: Based on what you've told...",
    label: "Help Req.",
    labelColor: Colors.yellow.shade500,
    labelTextColor: Colors.black,
    date: "Mon",
    imgPath: "assets/images/3.jpg",
    chatMemebers: 2,
  );

  Conversation conv4 = Conversation(
    sender: "Stephanie Jones",
    lastMessage: "You: What time dou you think you'll be...",
    label: "None",
    labelColor: null,
    labelTextColor: Colors.black,
    date: "14:48",
    imgPath: "assets/images/4.jpg",
    chatMemebers: 2,
  );

  Conversation conv5 = Conversation(
    sender: "Julie McAndrew",
    lastMessage: "You: Thanks Julie",
    label: "Engagement Partner",
    labelColor: Colors.grey.shade700,
    labelTextColor: Colors.white,
    date: "14:48",
    imgPath: "assets/images/5.jpg",
    chatMemebers: 2,
  );

  Conversation conv6 = Conversation(
    sender: "Dillan Edmonds",
    lastMessage: "You: Thanks",
    label: "None",
    labelColor: null,
    labelTextColor: Colors.black,
    date: "2d ago",
    imgPath: "assets/images/6.jpg",
    chatMemebers: 2,
  );

  return ListView(
    shrinkWrap: true,
    children: [
      conv1.tile,
      conv2.tile,
      conv3.tile,
      conv4.tile,
      conv5.tile,
      conv6.tile
    ],
  );
}
