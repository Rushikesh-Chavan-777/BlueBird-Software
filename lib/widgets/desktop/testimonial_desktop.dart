import 'package:flutter/material.dart';

class TestimonialDesktop extends StatelessWidget {
  const TestimonialDesktop({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("What our clients have to say",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 55,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 100.0, left: 100, top: 30),
          child: Wrap(
            children: [
              Text(
                  "At BlueBird Software, our success is measured by the satisfaction of our clients, and we're thrilled to say that our clients are consistently delighted with the services we provide. From startups to established enterprises, we've had the privilege of working with a diverse range of businesses, and the feedback has been overwhelmingly positive. Our clients appreciate our commitment to affordability, our dedication to understanding their unique needs, and our ability to deliver exceptional results. With BlueBird Software, you can trust that your digital projects are in good hands, and we look forward to continuing to exceed your expectations in the future.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.normal)),
            ],
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
