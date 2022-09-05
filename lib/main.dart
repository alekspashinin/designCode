import 'package:designcode/constants.dart';
import 'package:flutter/material.dart';

import 'components/home_screen_navbar.dart';
import 'components/lists/recend_course_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: kBackgroundColor,
          child: SafeArea(
            child: Column(
              children: [
                HomeScreenNavBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Recents',
                        style: kLargeTitleStyle,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '23 Courses more coming',
                        style: kSubtitleStyle,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const RecentCourseList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
