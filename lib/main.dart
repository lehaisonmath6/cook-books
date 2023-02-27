import 'package:cook_books/pages/vlc_page.dart';
import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'package:cook_books/app_router.dart';

void main() {
  DartVLC.initialize();
  usePathUrlStrategy();
  runApp(const DartVLCExample());
}

class CookBooksApp extends StatelessWidget {
  const CookBooksApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const AppRouter();
  }
}
