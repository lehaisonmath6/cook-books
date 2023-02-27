import 'package:cook_books/model/category_item.dart';
import 'package:cook_books/model/video_item.dart';
import 'package:cook_books/pages/gird_video_page.dart';
import 'package:cook_books/pages/video_detail_page.dart';
import 'package:cook_books/widgets/top_tags.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter extends StatelessWidget {
  const AppRouter({super.key});

  List<GoRoute> genRoutesFromCategory() {
    return lsCategorys.fold(
      List<GoRoute>.empty(growable: true),
      (previousValue, category) {
        previousValue.add(GoRoute(
          path: category.path!,
          builder: (context, state) {
            return GirdVideoPage(
                lsLectures: lsLectures
                    .where(
                        (element) => element.category!.path! == category.path!)
                    .toList());
          },
        ));
        previousValue.add(GoRoute(
          path: "${category.path ?? ""}/:id",
          builder: (context, state) {
            var id = int.tryParse(state.params["id"] ?? "0") ?? 0;

            var lectures = lsLectures.where((element) =>
                (element.category!.path == category.path && element.id == id));
            if (lectures.isEmpty) {
              return GirdVideoPage(lsLectures: lsLectures);
            }

            var lecture = lectures.first;
            return VideoDetailPage(lecture: lecture);
          },
        ));
        return previousValue;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scrollBehavior: MyCustomScrollBehavior(),
      theme: Theme.of(context),
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) {
              return GirdVideoPage(
                lsLectures: lsLectures,
              );
            },
          ),
          ...genRoutesFromCategory()
        ],
      ),
    );
  }
}
