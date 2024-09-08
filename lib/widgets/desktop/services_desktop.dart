import 'package:flutter/material.dart';

class ServicesDesktop extends StatelessWidget{
  const ServicesDesktop({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Our Services",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 55,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Image.network(
                                          'https://assets-global.website-files.com/6410ebf8e483b5bb2c86eb27/6410ebf8e483b53d6186fc53_ABM%20College%20Web%20developer%20main.jpg',
                                          height: 300,
                                          width: 300),
                                      Text(
                                        'Front End Development',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.network(
                                          'https://assets-global.website-files.com/606a802fcaa89bc357508cad/611432b386bb6d5c574f91f3_1.png',
                                          height: 300,
                                          width: 300),
                                      Text(
                                        'Backend End Development',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.network(
                                          'https://static.vecteezy.com/system/resources/thumbnails/004/971/893/small/web-hosting-icon-illustration-web-website-hosting-domain-backup-server-infographic-template-presentation-concept-banner-pictogram-icon-set-icons-vector.jpg',
                                          height: 300,
                                          width: 300),
                                      Text(
                                        'Free Web Hosting',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Image.network(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR96jHDbSbYgWG-LAsHdqFNGeVLtcZy8lghd2h4lYyfKeJUj68_PqqiWD_bRz3eG9F0gTc&usqp=CAU',
                                          height: 300,
                                          width: 300),
                                      Text(
                                        '100% responsive designs',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.network(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO5Y2fZKn-_ZzQRHlh8M7WSmu3fJ5couMPMi6pOt7b8y83KOqWhrlWfSGoQXuvKWp_Zww&usqp=CAU',
                                          height: 300,
                                          width: 300),
                                      Text(
                                        'Logo Design',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.network(
                                          'https://blog.happyfox.com/wp-content/uploads/2020/10/Customer-Service-Vs-Customer-Support-Vs-Customer-Success.png',
                                          height: 300,
                                          width: 300),
                                      Text(
                                        '24*7 customer support',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
      ],

    );
  }
}