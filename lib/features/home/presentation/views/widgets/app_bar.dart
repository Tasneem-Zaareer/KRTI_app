import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class AppBarCategory extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCategory({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_outlined),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: kPrimaryColor,
      iconTheme: const IconThemeData(),
    );
  }
}