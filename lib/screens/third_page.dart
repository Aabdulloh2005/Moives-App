import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff05001e),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            Text(
              "Download",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 27,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "List Movie",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Text(
                  "Downloading",
                  style: TextStyle(color: Color(0xff5a4bed), fontSize: 18),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 204),
                  child: Divider(
                    thickness: 2,
                    color: Color.fromARGB(129, 66, 66, 66),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 204),
                  child: Divider(
                    thickness: 2,
                    color: Color(0xff5a4bed),
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color(0xff231e37),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      "assets/images/img11.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Captain america: The first Avenger (2011)",
                          style: TextStyle(
                              fontSize: 18, color: Colors.grey.shade300),
                        ),
                        Image.asset(
                          "assets/images/marvel.png",
                          height: 20,
                          width: 50,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 80,
                                        color: const Color(0xff5a4bed),
                                      ),
                                      Container(
                                        padding:
                                            const EdgeInsets.only(left: 200),
                                        height: 1,
                                        width: 80,
                                        color: Colors.white,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.pause_circle),
                                      ),
                                      PopupMenuButton(
                                        itemBuilder: (context) {
                                          return [
                                            const PopupMenuItem(
                                              child: Text("Re-download"),
                                            ),
                                            const PopupMenuItem(
                                              child: Text("Details"),
                                            ),
                                            const PopupMenuItem(
                                              child: Text("Delete"),
                                            ),
                                          ];
                                        },
                                        // offset: Offset(40, 400),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "720K/s",
                                        style:
                                            TextStyle(color: Color(0xff5a4bed)),
                                      ),
                                      Text("250MB/1.5GB",
                                          style: TextStyle(
                                              color: Colors.grey.shade300)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
