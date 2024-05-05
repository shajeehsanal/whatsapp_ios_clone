// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_ios_clone/core/constants/asset_constants.dart';
import 'package:whatsapp_ios_clone/core/global/global_variables.dart';
import 'package:whatsapp_ios_clone/features/chat/home/home_screen.dart';
import 'package:whatsapp_ios_clone/theme/palette.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: index,
        activeColor: themeMode == ThemeMode.light ? null : Palette.greenColor,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_fill),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetConstants.statusIcon,
              color: index == 1
                  ? themeMode == ThemeMode.light
                      ? Palette.blueColor
                      : Palette.greenColor
                  : null,
            ),
            label: 'Status',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.camera_fill),
            label: 'Camera',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.phone),
            label: 'Calls',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (value) {
          index = value;
          setState(() {});
        },
      ),
      tabBuilder: (context, index) {
        if (index == 0) {
          return const HomeScreen();
        }
        return Container();
      },
    );
  }
}
