import 'package:cook_books/api/swagger.models.swagger.dart';
import 'package:cook_books/constants/sizes.dart';
import 'package:cook_books/utils/utils.dart';
import 'package:cook_books/widgets/heigh_spacer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RelateVideoItem extends StatelessWidget {
  const RelateVideoItem({required this.lecture, super.key});
  final ModelsLecture lecture;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print("click");
        context.go('${lecture.category!.path}/${lecture.id!}');
      },
      child: Padding(
        padding: const EdgeInsets.all(kPadding * 2),
        child: SizedBox(
          // color: Colors.amber,
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    lecture.thumbUrl!,
                    fit: BoxFit.cover,
                    width: 200,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Tooltip(
                      message: lecture.title,
                      child: SizedBox(
                        width: 300,
                        child: Text(
                          limitString(lecture.title!, 50),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                    const HeightSpacer(myHeight: kPadding * 3),
                    Text(
                      lecture.author!.name!,
                      style: const TextStyle(fontSize: 15),
                    ),
                    const HeightSpacer(myHeight: kPadding),
                    Row(
                      children: [
                        Text(viewCount(lecture.totalViews!)),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Icon(
                            Icons.circle,
                            color: Colors.black,
                            size: 3.5,
                          ),
                        ),
                        Text(timeSince(lecture.createTime!))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
