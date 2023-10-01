import 'package:flutter/material.dart';
import 'package:krti_app/features/app_bar/presentation/views/home_app_bar.dart';
import 'package:krti_app/features/drawer/presentation/views/home_drawer.dart';


import '../../../navigation_bar/presentation/views/navigation_bar.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context)  {
    return  const Scaffold(
      drawer: HomeDrawer(),
      appBar: HomeAppBar(),
      body: HomeNavigationBar(),
    );
  }
}






