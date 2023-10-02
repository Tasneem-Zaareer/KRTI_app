import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You mean the world to me ',
              style: GoogleFonts.patrickHand(
                textStyle: TextStyle(
                  fontSize: 20,
                  letterSpacing: 0.5,
                  //color: Colors.grey.shade600,
                ),
              ),
            ),
            Icon(Icons.favorite,color: Colors.deepPurple.shade100, size: 16,)
          ],
        ),
      ),
    );
  }
}
