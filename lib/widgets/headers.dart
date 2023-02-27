import 'package:cook_books/constants/colors.dart';
import 'package:cook_books/constants/sizes.dart';
import 'package:cook_books/drawer/bloc/drawer_bloc.dart';
import 'package:cook_books/responsive/responsive_layout.dart';
import 'package:cook_books/widgets/witdh_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Header extends StatelessWidget {
  const Header({super.key});
  Widget buildSearchField() => Padding(
        padding: const EdgeInsets.only(left: 10.00, top: 10.00, bottom: 10.00),
        child: TextFormField(
          style: const TextStyle(color: Colors.black),
          cursorColor: Colors.black,
          decoration: InputDecoration(
              isDense: true,
              contentPadding: const EdgeInsets.all(12.00),
              filled: true,
              fillColor: const Color.fromARGB(255, 242, 204, 209),
              hintText: "Tìm kiếm",
              hintStyle: const TextStyle(color: Colors.black38),
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color.fromARGB(0, 26, 18, 18)),
                  borderRadius: BorderRadius.circular(0.00)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(0.00)),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black))),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: Container(
        width: double.infinity,
        height: 65,
        color: kSecondaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding * 5),
          child: Row(children: [
            IconButton(
                onPressed: () {
                  // print("open drawer");
                  Scaffold.of(context)
                      .openDrawer(); // context.read<DrawerBloc>().add(EventToggleDrawer());
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: iconSize,
                )),
            const WidthSpacer(myWidth: kPadding),
            SizedBox(
              // width: 30,
              child: Icon(
                // size: 60,
                Icons.record_voice_over,
                color: Colors.red[600],
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            if (ResponsiveLayoutClass.isDesktop(context))
              Expanded(
                child: buildSearchField(),
              ),
            if (ResponsiveLayoutClass.isDesktop(context))
              Container(
                color: kaccentColor,
                child: const Padding(
                  padding: EdgeInsets.only(
                      left: 25.0, right: 25.0, bottom: 5.0, top: 5.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            const WidthSpacer(myWidth: kPadding * 3),
            if (ResponsiveLayoutClass.isDesktop(context))
              const Icon(
                Icons.mic,
                color: Colors.black,
              ),
            const Spacer(
              flex: 2,
            ),
            const Icon(
              Icons.video_call,
              color: Colors.black,
              size: iconSize,
            ),
            const WidthSpacer(myWidth: 25.00),
            const Icon(
              Icons.apps,
              color: Colors.black,
              size: iconSize,
            ),
            const WidthSpacer(myWidth: 25.00),
            const Icon(
              Icons.notifications,
              color: Colors.black,
              size: iconSize,
            ),
            const WidthSpacer(myWidth: 25.0),
            const CircleAvatar(
              radius: 16,
              child: Text(
                "V",
                style: TextStyle(fontSize: 20.00),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
