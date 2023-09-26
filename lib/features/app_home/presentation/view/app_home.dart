import 'package:flutter/material.dart';
import 'package:krti_app/features/app_home/presentation/view/widgets/home_app_bar.dart';
import 'package:krti_app/features/app_home/presentation/view/widgets/home_drawer.dart';


import 'widgets/navigation_bar.dart';

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






