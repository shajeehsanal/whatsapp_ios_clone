import 'package:flutter/cupertino.dart';
import 'package:whatsapp_ios_clone/core/constants/asset_constants.dart';
import 'package:whatsapp_ios_clone/core/global/global_variables.dart';
import 'package:whatsapp_ios_clone/theme/palette.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = width > height ? width * 0.02 : height * 0.02;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Edit',
              style: TextStyle(color: Palette.blueColor, fontSize: fontSize),
            ),
          ],
        ),
        middle: Text(
          'Chats',
          style: TextStyle(fontSize: fontSize * 1.2),
        ),trailing: Image.asset(AssetConstants.editIcon),
      ),
      child: Container(),
    );
  }
}
