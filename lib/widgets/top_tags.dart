import 'dart:ui';

import 'package:cook_books/constants/colors.dart';
import 'package:cook_books/constants/sizes.dart';
import 'package:cook_books/constants/tags.dart';
import 'package:cook_books/model/category_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

class TopTags extends StatelessWidget {
  const TopTags({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 0,
        child: Container(
          height: 65,
          decoration: BoxDecoration(
            border: const Border(
              top: BorderSide(
                color: Colors.white,
                width: 0.25,
              ),
              bottom: BorderSide(
                color: Colors.white,
                width: 0.25,
              ),
            ),
            color: kSecondaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding * 5),
            child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: lsCategorys.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.00, vertical: 1.5),
                    child: Chip(
                      labelPadding: const EdgeInsets.all(2.0),
                      label: ElevatedButton(
                        onPressed: () {
                          context.go(lsCategorys[index].path ?? "");
                        },
                        child: Text(lsCategorys[index].path ?? "",
                            style: TextStyle(
                                color:
                                    index == 0 ? Colors.white : Colors.black)),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ));
  }
}
