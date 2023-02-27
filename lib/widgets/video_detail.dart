import 'package:cook_books/api/swagger.swagger.dart';
import 'package:cook_books/constants/sizes.dart';
import 'package:cook_books/utils/utils.dart';
import 'package:cook_books/widgets/video_box_desktop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'heigh_spacer.dart';
import 'video_box.dart';
import 'witdh_spacer.dart';

class VideoDetail extends StatelessWidget {
  const VideoDetail({required this.lecture, super.key});
  final ModelsLecture lecture;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height * 3 / 4,
          child: VideoBoxDesktop(
            videoUrl: lecture.videoUrl!,
            key: UniqueKey(),
          )),
      const HeightSpacer(
        myHeight: kPadding * 2,
      ),
      Text(
        lecture.title!,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      const HeightSpacer(myHeight: kPadding * 2),
      Row(
        children: [
          CircleAvatar(
            child: Text(lecture.author!.name!.substring(0, 1)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(lecture.author!.name!),
          )
        ],
      ),
      Padding(
          padding: const EdgeInsets.all(kPadding * 3),
          child: Card(
              color: const Color.fromRGBO(100, 100, 100, 0.1),
              borderOnForeground: true,
              child: Padding(
                  padding: const EdgeInsets.all(kPadding * 2),
                  child: Column(
                    children: [
                      Row(children: [
                        Text(
                          viewCount(lecture.totalViews ?? 0),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const WidthSpacer(myWidth: kPadding * 3),
                        Text(
                          timeSince(lecture.createTime ?? 0),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ]),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: kPadding * 4),
                        child: Text(
                          lecture.intro!,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ))))
    ]);
  }
}
