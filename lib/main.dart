import 'package:flutter/cupertino.dart';
import 'package:whatsapp_ios_clone/core/common/navbar/navbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main()async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
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
