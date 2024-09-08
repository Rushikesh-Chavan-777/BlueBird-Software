import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Brand extends StatelessWidget{
  const Brand({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 35,
                                      foregroundImage: AssetImage(
                                        
                                          'lib/assets/images/logonn.png'),
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "BlueBird",
                                          style: GoogleFonts.bebasNeue(
                                            fontSize: 30,
                                          ),
                                        ),
                                        //Spacer(),
                                        Text(
                                          "Software",
                                          style: GoogleFonts.bebasNeue(
                                            fontSize: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
  }
}