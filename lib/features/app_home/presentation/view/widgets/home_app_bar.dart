import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../about_us/presentation/views/about_us.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: kPrimaryColor),
      title: Text(
        'K R T I',
        style: TextStyle(color: kPrimaryColor),
      ),
      centerTitle: true,
      actions:  [
        Padding(
          padding: const EdgeInsets.only(top: 8.0,right: 8),
          child: Image.asset('assets/images/invitation.png',width: 50,),
        ),
        //AppIconButton(iconButton:  Icons.search,),
        //AppIconButton(iconButton:  Icons.info_outline,),

        //const SearchSection(),
      ],
    );
  }

  void navigateToAboutUs(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const AboutUs();
        },
      ),
    );
  }
}

class AppIconButton extends StatelessWidget {
  const AppIconButton({super.key, required this.iconButton});

  final IconData iconButton;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        iconButton,
        color: kPrimaryColor,
      ),
    );
  }
}
