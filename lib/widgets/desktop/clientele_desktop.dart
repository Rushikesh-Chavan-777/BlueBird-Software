import 'package:flutter/material.dart';

class ClienteleDesktop extends StatelessWidget {
  const ClienteleDesktop({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Our clientele",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 55,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(width: 50),
            Image.network(
                'https://static.wixstatic.com/media/91942b_86300afe25b343bab54d0b928bf12082~mv2.png/v1/fill/w_708,h_154,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/tVC%20LOGO%20design%20(1)_edited.png',
                height: 200,
                width: 200),
            const SizedBox(
              width: 50,
            ),
            Image.network(
                'https://i0.wp.com/goldsgym.in/wp-content/uploads/2023/10/fullcolor.png?w=563&ssl=1',
                height: 150,
                width: 150),
            const SizedBox(
              width: 50,
            ),
            Image.network(
                'https://i0.wp.com/harilaserclinics.com/wp-content/uploads/2022/12/cropped-cropped-Laser-clinics-e1570269407809-removebg-preview-e1670690844383.png?fit=200%2C53&ssl=1',
                height: 200,
                width: 200),
            const SizedBox(width: 50),
            Image.asset('lib/assets/images/cclogo.png',
                height: 200, width: 200),
            const SizedBox(
              width: 50,
            ),
            Image.asset('lib/assets/images/fit.png', height: 200, width: 200),
            const SizedBox(width: 50),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(width: 50),
            Image.asset('lib/assets/images/labella.png',
                height: 200, width: 200),
            const SizedBox(
              width: 50,
            ),
            Image.asset('lib/assets/images/london.png',
                height: 200, width: 200),
            const SizedBox(
              width: 50,
            ),
            Image.asset('lib/assets/images/tatva.png', height: 200, width: 200),
            const SizedBox(width: 50),
            Image.asset('lib/assets/images/swan.png', height: 200, width: 200),
            const SizedBox(
              width: 50,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(width: 50),
            Image.asset('lib/assets/images/sarayu.png',
                height: 150, width: 119),
            const SizedBox(width: 50),
            Image.asset('lib/assets/images/woodstock.png',
                height: 150, width: 119),
            const SizedBox(width: 50),
            Image.asset('lib/assets/images/gems.png', height: 150, width: 119),
            const SizedBox(width: 50),
          ],
        ),
      ],
    );
  }
}
