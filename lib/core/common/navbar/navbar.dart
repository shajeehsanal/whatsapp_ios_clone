import 'package:flutter/cupertino.dart';
import 'package:whatsapp_ios_clone/core/constants/asset_constants.dart';
import 'package:whatsapp_ios_clone/core/global/global_variables.dart';
import 'package:whatsapp_ios_clone/features/chat/home/chat_view_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 3;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(AssetConstants.statusIcon),
            activeIcon: Image.asset(
              AssetConstants.statusIcon,
              color: CupertinoColors.activeBlue,
            ),
            label: 'Status',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.phone),
            label: 'Calls',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.camera),
            label: 'Camera',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2_fill),
            label: 'Chats',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (value) {
          index = value;
          setState(() {});
        },
      ),
      tabBuilder: (context, index) {
        if (index == 3) {
          return const HomeScreen();
        }
        return Container();
      },
    );
  }
}
