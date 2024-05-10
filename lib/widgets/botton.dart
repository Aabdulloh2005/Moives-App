import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/pages/home_page.dart';
import 'package:homework/screens/download_page.dart';
import 'package:homework/screens/second_page.dart';
import 'package:homework/screens/third_page.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(26),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
            height: 60,
            color: Colors.transparent.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) => HomePage()));
                  },
                  icon: const Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                  tooltip: 'Home',
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => SecondPage()));
                  },
                  icon: const Icon(
                    CupertinoIcons.search,
                    color: Color(0xff5a4bed),
                    size: 28,
                  ),
                  tooltip: 'Search',
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.bookmark,
                    color: Colors.grey,
                    size: 28,
                  ),
                  tooltip: 'Shopping card',
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => DownloadPage()));
                  },
                  icon: const Icon(
                    CupertinoIcons.arrow_down_to_line_alt,
                    color: Colors.grey,
                    size: 28,
                  ),
                  tooltip: 'Shopping card',
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.person,
                    color: Colors.grey,
                    size: 28,
                  ),
                  tooltip: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
