import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class AnnouncementBar extends StatelessWidget {
  const AnnouncementBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.only(bottom: 12, top: 12),
    child: Container(
      alignment: Alignment.center,
      height: 45,
      color: kPaintingColor,
      child: const Text('Mom u mean the world to me'),
    ),
  );const Placeholder();
  }
}
