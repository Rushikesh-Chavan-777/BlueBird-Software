import 'package:bluebirdsoftware/popover.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandingHandset extends StatelessWidget {
  const BrandingHandset({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 15),
              CircleAvatar(
                foregroundImage: AssetImage('lib/assets/images/logonn.png'),
              ),
              SizedBox(width: 10),
              Center(
                child: Text(
                  "BlueBird Software",
                  style: GoogleFonts.bebasNeue(
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
          Popover(),
        ],
      ),
    );
  }
}
