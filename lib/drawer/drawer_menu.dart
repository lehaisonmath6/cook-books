import 'package:cook_books/constants/colors.dart';
import 'package:cook_books/constants/sizes.dart';
import 'package:cook_books/drawer/menu_model.dart';
import 'package:cook_books/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  int selectedIndex = 0;
  Widget buildSideBar() => ListView.builder(
        controller: ScrollController(),
        physics: const BouncingScrollPhysics(),
        itemCount: sideMenuItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.go(sideMenuItems[index].path);
            },
            child: MouseRegion(
              onHover: (event) {
                setState(() {
                  selectedIndex = index;
                });
              },
              onExit: (event) {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: Container(
                color:
                    selectedIndex == index ? kaccentColor : Colors.transparent,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kPadding * 2.5),
                  child: ListTile(
                    leading: sideMenuItems[index].icons,
                    title: Text(
                      sideMenuItems[index].title,
                      style:
                          const TextStyle(color: Colors.black, fontSize: 15.00),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      );
  @override
  Widget build(BuildContext context) {
    // print("render drawer");
    return ResponsiveLayoutClass.isDesktop(context)
        ? Drawer(
            child: Container(
              color: kSecondaryColor,
              child: buildSideBar(),
            ),
          )
        : Drawer(
            child: Container(
            color: kSecondaryColor,
            child: buildSideBar(),
          ));
  }
}
