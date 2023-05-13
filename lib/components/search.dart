import 'package:flutter/material.dart';

Row searchFiled() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(
        width: 280,
        height: 60,
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Color.fromARGB(255, 10, 42, 63),
                size: 30,
              ),
              labelText: "Search...",
              labelStyle: TextStyle(color: Colors.grey[500]),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 10, 42, 63), width: 1.0))),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        height: 60,
        width: 70,
        decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: Colors.pinkAccent),
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: RotatedBox(
          quarterTurns: 2,
          child: Image.asset(
            "assets/icons/settings.png",
            color: Colors.pinkAccent,
          ),
        ),
      )
    ],
  );
}
