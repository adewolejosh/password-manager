
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:password_manager/routes/auto_route.gr.dart';


class BottomBar extends StatelessWidget {
  final int navCurrentScreen;

  const BottomBar({Key? key, required this.navCurrentScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: IconButton(
            icon: Icon(
                Icons.account_circle_outlined,
                size: navCurrentScreen == 0 ? 40.0 : 25.0,
                color: navCurrentScreen == 0 ? Colors.black : Colors.grey),
            onPressed: () {
              AutoRouter.of(context).push(const UserProfileScreen());
            },)
        ),
        BottomNavigationBarItem(
          label: '',
          icon: IconButton(
            icon: Icon(
                Icons.home,
                size: navCurrentScreen == 1 ? 40.0 : 25.0,
                color: navCurrentScreen == 1 ? Colors.black : Colors.grey),
            onPressed: () {
              AutoRouter.of(context).push(const HomeScreen());
            },)
        ),
        BottomNavigationBarItem(
          label: '',
          icon: IconButton(
            icon: Icon(
                Icons.settings,
                size: navCurrentScreen == 2 ? 40.0 : 25.0,
                color: navCurrentScreen == 2 ? Colors.black : Colors.grey),
            onPressed: () {
              AutoRouter.of(context).push(const UserSettingsScreen());
            },)
        ),
      ],
    );
  }
}
