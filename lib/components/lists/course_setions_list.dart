import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../model/course.dart';
import '../cards/course_sections_card.dart';

class CourseSectionList extends StatelessWidget {
  List<Widget> courseSectionsWidgets() {
    List<Widget> cards = [];
    for (var course in courseSections) {
      cards.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: CourseSectionCard(
            course: course,
          ),
        ),
      );
    }

    cards.add(
      Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Text(
          'No more sections to view, look\n for more in our courses',
          style: kCaptionLabelStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );

    return cards;
  }

  const CourseSectionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: courseSectionsWidgets(),
    ));
  }
}
