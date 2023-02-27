import 'package:cook_books/api/swagger.swagger.dart';
import 'package:cook_books/constants/sizes.dart';
import 'package:cook_books/model/video_item.dart';
import 'package:cook_books/utils/utils.dart';
import 'package:cook_books/widgets/gird_video.dart';
import 'package:cook_books/widgets/heigh_spacer.dart';
import 'package:cook_books/widgets/relate_video_item.dart';
import 'package:cook_books/widgets/witdh_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RelateVideo extends StatelessWidget {
  const RelateVideo({required this.lsLectures, super.key});
  final List<ModelsLecture> lsLectures;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List<RelateVideoItem>.generate(lsLectures.length,
            (index) => RelateVideoItem(lecture: lsLectures[index]))
      ],
    );
  }
}
