import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
          body: null),
    );
  }
}
