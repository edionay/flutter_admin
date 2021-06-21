import 'package:flutter/material.dart';

import 'drawer_list_tile.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/logo.png'),
            ),
            DrawerListTile(
              icon: 'assets/icons/menu_dashboard.svg',
              title: 'Dashboard',
              onPress: () {},
            ),
            DrawerListTile(
              icon: 'assets/icons/menu_tran.svg',
              title: 'Transaction',
              onPress: () {},
            ),
            DrawerListTile(
              icon: 'assets/icons/menu_task.svg',
              title: 'Task',
              onPress: () {},
            ),
            DrawerListTile(
              icon: 'assets/icons/menu_doc.svg',
              title: 'Documents',
              onPress: () {},
            ),
            DrawerListTile(
              icon: 'assets/icons/menu_store.svg',
              title: 'Store',
              onPress: () {},
            ),
            DrawerListTile(
              icon: 'assets/icons/menu_notification.svg',
              title: 'Notification',
              onPress: () {},
            ),
            DrawerListTile(
              icon: 'assets/icons/menu_profile.svg',
              title: 'Profile',
              onPress: () {},
            ),
            DrawerListTile(
              icon: 'assets/icons/menu_setting.svg',
              title: 'Settings',
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
