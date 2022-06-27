import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inecta_exercise/constants/app_constant.dart';
import 'package:inecta_exercise/utils/app_theme.dart';
import 'package:inecta_exercise/widgets/navigation_drawer.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final GlobalKey<ScaffoldState> _settingsKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _settingsKey,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            _settingsKey.currentState?.openDrawer();
          },
          icon: const ImageIcon(
            AssetImage("assets/images/menu.png"),
          ),
        ),
        title: const Text(
          'Settings',
          style: AppTheme.smallTitle,
        ),
        backgroundColor: const Color(0xff124D3D),
      ),
      drawer: NavigationDrawer(
        email: 'ups.chauhan84@gmail.com',
      ),
      body: Column(
        children: [
          const SizedBox(
            height: padding_50,
          ),
          Padding(
            padding: const EdgeInsets.all(padding_50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Boat number:   101',
                  style: AppTheme.smallTitle.copyWith(color: Colors.black),
                ),
                const SizedBox(
              height: padding_15,
            ),
                Text(
                  'Boat name:   Blue ship 1',
                  style: AppTheme.smallTitle.copyWith(color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
