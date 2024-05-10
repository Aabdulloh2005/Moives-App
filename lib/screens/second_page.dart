import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homework/widgets/botton.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyBottomNavigation(),
      backgroundColor: const Color(0xff05001e),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: const Color(0xff37324b),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(45))),
              margin: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.search,
                        size: 35,
                        color: Color.fromARGB(183, 203, 202, 202),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Comedy",
                        style: TextStyle(
                          color: Color.fromARGB(183, 203, 202, 202),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        alignment: Alignment.centerRight,
                        onPressed: () {},
                        icon: const Icon(
                          size: 30,
                          Icons.cancel_outlined,
                          color: Color.fromARGB(183, 203, 202, 202),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Results for \" comedy\"",
                      style: TextStyle(
                          color: Color.fromARGB(183, 230, 229, 229),
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      spacing: 10,
                      runSpacing: 20,
                      children: [
                        for (int i = 1; i < 21; i++) GetPhotos(i: i),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GetPhotos extends StatelessWidget {
  int i;
  GetPhotos({required this.i, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 110,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/img$i.jpg"),
        ),
      ),
    );
  }
}
