import 'package:flutter/cupertino.dart';
import 'package:whatsapp_ios_clone/core/common/navbar/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: NavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
