import 'package:cook_books/api/swagger.models.swagger.dart';
import 'package:cook_books/constants/colors.dart';
import 'package:cook_books/responsive/responsive_layout.dart';
import 'package:cook_books/widgets/grid_video_item.dart';
import 'package:flutter/material.dart';

class GridVideo extends StatelessWidget {
  const GridVideo({required this.lsLectures, super.key});
  final List<ModelsLecture> lsLectures;
  @override
  Widget build(BuildContext context) {
    // return Placeholder();
    return Expanded(
      flex: 5,
      child: ResponsiveLayoutClass(
          mobileView: GridVideoView(
            crossAxisCount: 1,
            lsLectures: lsLectures,
          ),
          tabletView: GridVideoView(
            crossAxisCount: 2,
            lsLectures: lsLectures,
          ),
          desktopView: GridVideoView(
            crossAxisCount: 4,
            lsLectures: lsLectures,
          )),
    );
  }
}

class GridVideoView extends StatelessWidget {
  const GridVideoView(
      {required this.lsLectures, this.crossAxisCount = 4, super.key});
  final int crossAxisCount;
  final List<ModelsLecture> lsLectures;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        itemCount: lsLectures.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: crossAxisCount),
        itemBuilder: (context, index) {
          return GridVideoItem(lecture: lsLectures[index]);
        },
      ),
    );
  }
}
