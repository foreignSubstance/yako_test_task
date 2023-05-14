import 'package:flutter/material.dart';

class Conversation {
  late Card tile;

  Conversation(
      {required String sender,
      required String lastMessage,
      required String label,
      required Color? labelColor,
      required Color labelTextColor,
      required String date,
      required int chatMemebers,
      required String imgPath}) {
    tile = Card(
      child: ListTile(
          title:
              Text(sender, style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(lastMessage, style: const TextStyle(color: Colors.black)),
            if (label != "None")
              Chip(
                  label: Text(label, style: TextStyle(color: labelTextColor)),
                  backgroundColor: labelColor)
          ]),
          leading: chatMemebers == 2
              ? dialogueAvatar(imgPath)
              : polylogueAvatar(imgPath, imgPath),
          minLeadingWidth: 50,
          trailing: Text(date,
              style: const TextStyle(color: Color.fromARGB(255, 10, 42, 63)))),
    );
  }
}

ClipOval dialogueAvatar(String imgPath) {
  return ClipOval(
    child: SizedBox.fromSize(
      size: const Size.fromRadius(20),
      child: Image.asset(
        imgPath,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Stack polylogueAvatar(String firstImgPath, String secondtImgPath) {
  var firstAvatar = ClipOval(
    child: SizedBox.fromSize(
      size: const Size.fromRadius(20),
      child: Image.asset(
        firstImgPath,
        fit: BoxFit.cover,
      ),
    ),
  );

  var secondAvatar = Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(20)),
    child: ClipOval(
      child: SizedBox.fromSize(
        size: const Size.fromRadius(20),
        child: Image.asset(
          firstImgPath,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );

  return Stack(
    clipBehavior: Clip.none,
    children: [
      Positioned(right: -15, bottom: 2, child: firstAvatar),
      secondAvatar,
      Positioned(
        bottom: -10,
        right: -7,
        child: Container(
          alignment: Alignment.center,
          height: 25,
          width: 40,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 10, 42, 63),
              border: Border.all(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(20)),
          child: const Text("+3",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold)),
        ),
      )
    ],
  );
}
