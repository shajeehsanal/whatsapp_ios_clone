import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
        ),
        trailing: Image.asset(AssetConstants.editIcon),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Broadcast Lists',
                    style: TextStyle(
                      fontSize: fontSize * 1.2,
                      color: Palette.blueColor,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'New Group',
                    style: TextStyle(
                      fontSize: fontSize * 1.2,
                      color: Palette.blueColor,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                  color: Palette.greyColor,
                  height: 1,
                ),
                itemCount: 20,
                itemBuilder: (context, index) {
                  final today = DateFormat('dd/MM/yy').format(DateTime.now());
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CupertinoListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        child: Icon(CupertinoIcons.person),
                      ),
                      leadingSize: 50,
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Person ${index + 1}',
                            style: TextStyle(fontSize: fontSize * 1.3),
                          ),
                          const Spacer(),
                          Text(
                            today,
                            style: TextStyle(
                              fontSize: fontSize * 0.8,
                              color: Palette.greyColor,
                            ),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(5),
                      subtitle: Text(
                        'Message ${index + 1}',
                        style: TextStyle(
                          fontSize: fontSize,
                          color: Palette.greyColor,
                        ),
                      ),
                      trailing: const Icon(
                        CupertinoIcons.right_chevron,
                        color: Palette.greyColor,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
