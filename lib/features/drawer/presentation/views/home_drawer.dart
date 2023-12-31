import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:krti_app/features/drawer/presentation/views/widgets/drawer_list_tile.dart';

import '../../../../core/utils/lists/categories_menu_all.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    void signUserOut() {
      FirebaseAuth.instance.signOut();
    }
    return Drawer(
      // child: Column(
      //   children: [
      // const DrawerHeader(
      //   child: Text('Image'),
      // ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: categoriesMenuAll.length,
                itemBuilder: (context, index) => DrawerListTile(
                  category: categoriesMenuAll[index],
                ),
              ),
            ),
            ListTile(
              title: Text('Logout'),
              leading: IconButton(
                onPressed: signUserOut,
                icon: Icon(
                  Icons.logout,
                ),
              ),
            ),
          ],
        ),
      ),
      //],
      // ),
    );
  }
}
