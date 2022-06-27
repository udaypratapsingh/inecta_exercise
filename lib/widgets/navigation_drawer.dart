// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:inecta_exercise/constants/app_constant.dart';
import 'package:inecta_exercise/utils/app_routes.dart';

import '../utils/app_theme.dart';

class NavigationDrawer extends StatelessWidget {
  String email = '';
  NavigationDrawer({required this.email, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff124D3D),
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: height_30,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(padding_15),
                child: Text(
                  email,
                  style: AppTheme.smallTitle,
                ),
              ),
              Expanded(child: Container()),
              IconButton(
                icon: const ImageIcon(
                  AssetImage("assets/images/cross.png"),
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          const SizedBox(
            height: height_70,
          ),
          ListTile(
            title: const Text(
              offloadManager,
              style: AppTheme.smallTitle,
            ),
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                AppRoutes.offload,
              );
            },
          ),
          ListTile(
            title: const Text(
              settings,
              style: AppTheme.smallTitle,
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, AppRoutes.settings);
            },
          ),
        ],
      ),
    );
  }
}
