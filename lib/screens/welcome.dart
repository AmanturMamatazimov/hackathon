import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/components.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  static String id = 'welcome_screen';
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: () async {
          SystemNavigator.pop();
          return false;
        },
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            _globalKey.currentState!.openDrawer();
                          },
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ), /*
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 10),
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Messages",
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          )),
                      const SizedBox(
                        width: 35,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Online",
                            style: TextStyle(color: Colors.grey, fontSize: 26),
                          )),
                      const SizedBox(
                        width: 35,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Groups",
                            style: TextStyle(color: Colors.grey, fontSize: 26),
                          )),
                      const SizedBox(
                        width: 35,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "More",
                            style: TextStyle(color: Colors.grey, fontSize: 26),
                          )),
                      const SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                )*/
              ],
            ),
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
                height: 220,
                decoration: const BoxDecoration(
                    color: Color(0xFF0000FF),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /*const Text(
                          "Favorite contacts",
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            )),*/
                      ],
                    ),
                    SizedBox(
                      height: 90,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          /*buildContactAvatar('Alla', 'img1.jpeg'),
                          buildContactAvatar('July', 'img2.jpeg'),
                          buildContactAvatar('Mikle', 'img3.jpeg'),
                          buildContactAvatar('Kler', 'img4.jpg'),
                          buildContactAvatar('Moane', 'img5.jpeg'),
                          buildContactAvatar('Julie', 'img6.jpeg'),
                          buildContactAvatar('Allen', 'img7.jpeg'),
                          buildContactAvatar('John', 'img8.jpg'),*/
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 120,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Color(0xFFEFFFFC),
                  ),
                  child: ListView(
                    padding: const EdgeInsets.only(left: 25),
                    children: [
                      buildConversationRow(
                          'Laura', 'Hello, how are you', 'img1.jpeg', 0),
                      buildConversationRow(
                          'Kalya', 'Will you visit me', 'img2.jpeg', 2),
                      buildConversationRow(
                          'Mary', 'I ate your ...', 'img3.jpeg', 6),
                      buildConversationRow(
                          'Hellen', 'Are you with Kayla again', 'img5.jpeg', 0),
                      buildConversationRow(
                          'Louren', 'Barrow money please', 'img6.jpeg', 3),
                      buildConversationRow(
                          'Tom', 'Hey, whatsup', 'img7.jpeg', 0),
                      buildConversationRow(
                          'Laura', 'Helle, how are you', 'img1.jpeg', 0),
                      buildConversationRow(
                          'Laura', 'Helle, how are you', 'img1.jpeg', 0),
                    ],
                  ),
                ))
          ],
        ), /*const Center(
          child: ScreenTitle(
            title: 'Welcome',
          ),
        ),*/
      ),
    );
  }

  Column buildConversationRow(
      String name, String message, String filename, int msgCount) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(filename: filename),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      message,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 5),
              child: Column(
                children: [
                  const Text(
                    '16:35',
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  if (msgCount > 0)
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: const Color(0xFF27c1a9),
                      child: Text(
                        msgCount.toString(),
                        style:
                            const TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                ],
              ),
            )
          ],
        ),
        const Divider(
          indent: 70,
          height: 20,
        )
      ],
    );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          UserAvatar(
            filename: filename,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset('assets/images/$filename').image,
      ),
    );
  }
}
