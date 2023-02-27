import 'package:cook_books/api/swagger.models.swagger.dart';
import 'package:cook_books/drawer/drawer_menu.dart';
import 'package:cook_books/model/video_item.dart';
import 'package:cook_books/responsive/responsive_layout.dart';
import 'package:cook_books/widgets/gird_video.dart';
import 'package:cook_books/widgets/headers.dart';
import 'package:cook_books/widgets/top_tags.dart';
import 'package:flutter/material.dart';

class GirdVideoPage extends StatelessWidget {
  const GirdVideoPage({required this.lsLectures, super.key});
  final List<ModelsLecture> lsLectures;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      body: Column(
        children: [
          const Header(),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                if (ResponsiveLayoutClass.isDesktop(context))
                  const DrawerMenu(),
                Expanded(
                  child: Column(
                    children: [
                      const TopTags(),
                      GridVideo(
                        lsLectures: lsLectures,
                      )
                    ],
                  ),
                  flex: 5,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
