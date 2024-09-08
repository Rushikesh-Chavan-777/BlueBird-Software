import 'package:flutter/material.dart';

class ClienteleHandset extends StatelessWidget {
  const ClienteleHandset({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Our Clientele",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
                'https://static.wixstatic.com/media/91942b_86300afe25b343bab54d0b928bf12082~mv2.png/v1/fill/w_708,h_154,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/tVC%20LOGO%20design%20(1)_edited.png',
                height: 60,
                width: 100),
            Image.network(
                'https://i0.wp.com/goldsgym.in/wp-content/uploads/2023/10/fullcolor.png?w=563&ssl=1',
                height: 50,
                width: 50),
            Image.network(
                'https://i0.wp.com/harilaserclinics.com/wp-content/uploads/2022/12/cropped-cropped-Laser-clinics-e1570269407809-removebg-preview-e1670690844383.png?fit=200%2C53&ssl=1',
                height: 60,
                width: 100),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('lib/assets/images/labella.png', height: 50, width: 50),
            Image.asset('lib/assets/images/london.png', height: 50, width: 50),
            Image.asset('lib/assets/images/tatva.png', height: 50, width: 50),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('lib/assets/images/sarayu.png', height: 50, width: 50),
            Image.asset('lib/assets/images/woodstock.png',
                height: 50, width: 50),
            Image.asset('lib/assets/images/gems.png', height: 50, width: 50),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('lib/assets/images/cclogo.png', height: 50, width: 50),
            Image.asset('lib/assets/images/fit.png', height: 50, width: 50),
            Image.asset('lib/assets/images/swan.png', height: 50, width: 50),
          ],
        ),
      ],
    );
  }
}
