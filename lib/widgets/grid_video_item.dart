import 'package:cook_books/api/swagger.swagger.dart';
import 'package:cook_books/constants/sizes.dart';
import 'package:cook_books/utils/utils.dart';
import 'package:cook_books/widgets/witdh_spacer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'heigh_spacer.dart';

class GridVideoItem extends StatelessWidget {
  const GridVideoItem({required this.lecture, super.key});
  final ModelsLecture lecture;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('${lecture.category!.path}/${lecture.id!}');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              lecture.thumbUrl!,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color.fromARGB(255, 33, 243, 156),
                  child: Text(
                    lecture.author!.name!.substring(0, 1),
                    style:
                        const TextStyle(fontSize: 20.00, color: Colors.black),
                  ),
                ),
                const WidthSpacer(myWidth: kPadding * 3),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      limitString(lecture.title!, 30),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15.00,
                          fontWeight: FontWeight.bold),
                    ),
                    const HeightSpacer(myHeight: kPadding * 2),
                    Text(
                      limitString(lecture.author!.name!, 30),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15.00,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          viewCount(lecture.totalViews ?? 0),
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15.00,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Icon(
                            Icons.circle,
                            color: Colors.black,
                            size: 3.5,
                          ),
                        ),
                        Text(
                          timeSince(lecture.createTime!),
                          style: const TextStyle(
                            color: Color.fromARGB(255, 158, 158, 158),
                            fontSize: 15.00,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
