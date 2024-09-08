import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandFooter extends StatelessWidget{
  const BrandFooter({super.key});
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
                                            textStyle: TextStyle(color: Colors.white,fontSize: 30),

                                            //fontSize: 30,
                                          ),
                                        ),
                                        //Spacer(),
                                        Text(
                                          "Software",
                                          style: GoogleFonts.bebasNeue(
                                            textStyle: TextStyle(color: Colors.white,fontSize: 30),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
  }
}