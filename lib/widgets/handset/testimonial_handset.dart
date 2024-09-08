import 'package:flutter/material.dart';

class TestimonialHandset extends StatelessWidget{
  const TestimonialHandset({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Client Testimonial",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 10, top: 15),
                                child: Wrap(
                                  children: [
                                    Text(
                                        "Customers consistently rave about their experience with BlueBird Software. From start to finish, they appreciate the professionalism, expertise, and seamless process. With top-notch results and excellent service, BlueBird Software earns glowing recommendations.",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              ),
      ],
    );
  }
}