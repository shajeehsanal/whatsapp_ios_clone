import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ios_clone/core/global/global_variables.dart';
import 'package:whatsapp_ios_clone/theme/palette.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: height * 0.02,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Chats',
                style: TextStyle(color: Palette.blueColor, fontSize: 20),
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.add_circled_solid,
                    color: themeMode == ThemeMode.light
                        ? null
                        : Palette.greenColor,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
