// import 'dart:html';

import 'package:cook_books/api/swagger.models.swagger.dart';
import 'package:cook_books/constants/sizes.dart';
import 'package:cook_books/drawer/drawer_menu.dart';
import 'package:cook_books/model/video_item.dart';
import 'package:cook_books/utils/utils.dart';
import 'package:cook_books/widgets/gird_video.dart';
import 'package:cook_books/widgets/headers.dart';
import 'package:cook_books/widgets/heigh_spacer.dart';
import 'package:cook_books/widgets/relate_video.dart';
import 'package:cook_books/widgets/video_box.dart';
import 'package:cook_books/widgets/video_detail.dart';
import 'package:cook_books/widgets/witdh_spacer.dart';
import 'package:flutter/material.dart';

class VideoDetailPage extends StatelessWidget {
  const VideoDetailPage({required this.lecture, super.key});
  final ModelsLecture lecture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(),
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(kPadding * 3),
                child: SingleChildScrollView(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const WidthSpacer(myWidth: kPadding * 12),
                      Expanded(
                          flex: 6,
                          child: VideoDetail(
                            lecture: lecture,
                          )),
                      RelateVideo(
                        lsLectures: lsLectures
                            .where((element) =>
                                element.category!.path ==
                                lecture.category!.path)
                            .toList(),
                      ),
                      const WidthSpacer(myWidth: kPadding * 4)
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
