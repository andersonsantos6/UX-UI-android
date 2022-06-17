import 'package:flutter/material.dart';
import 'package:phone_portfolio/src/view/home_page.dart';
import 'package:phone_portfolio/src/view/webView_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/app': (context) => const WebViewPage(),
      },
    );
  }
}
