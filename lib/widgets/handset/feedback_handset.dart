import 'package:flutter/material.dart';
import 'package:reveal_on_scroll/reveal_on_scroll.dart';

class FeedbackHandset extends StatefulWidget {
  const FeedbackHandset({
    super.key,
    required this.controller,
    required this.tag1,
    required this.tag2,
    required this.tag3,
  });
  final controller;
  final String tag1;
  final String tag2;
  final String tag3;

  @override
  State<FeedbackHandset> createState() => _FeedbackHandsetState();
}

class _FeedbackHandsetState extends State<FeedbackHandset> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //card 1 row 1
            ScrollToReveal.withAnimation(
              label: widget.tag1,
              scrollController: widget.controller,
              reflectPosition: -100,
              animationType: AnimationType.findInLeft,
              child: Card(
                elevation: 20,
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 400,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 20),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://media.istockphoto.com/id/1131173610/photo/portrait-of-a-handsome-indian-man.jpg?s=612x612&w=0&k=20&c=co7kEY099YwL_fj9CA1R34sxednRdYPdKD7Iqo34ILc='),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star_half_outlined,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text("Rohit Gupta",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25)),
                          SizedBox(height: 20),
                          Center(
                            child: Text(
                              "BlueBird Software's gym software combines affordability with a sleek UI. It's easy to use for both staff and members, making it the ideal choice for any fitness facility.",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        // card 2 row 2
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //card 2
            //card 1 : e- commerce
            ScrollToReveal.withAnimation(
              label: widget.tag2,
              scrollController: widget.controller,
              reflectPosition: -100,
              animationType: AnimationType.findInLeft,
              child: Card(
                elevation: 20,
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 400,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://media.istockphoto.com/id/1198252595/photo/cheerful-indian-girl-standing-at-home-office-looking-at-camera.jpg?s=170667a&w=0&k=20&c=5-fisJkT-NW0bZ3lCNHZmsijKetiTubBXI_rfdVEGNM='),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star_half_outlined,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text("Smriti Singhania",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25)),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "BlueBird Software went above and beyond! Their professionalism and innovation led to an impressive website and mobile app. We're thrilled with the outcome and wholeheartedly recommend their services",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        //card 3 row 3
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //card 3
            //card 1 : e- commerce
            ScrollToReveal.withAnimation(
              label: widget.tag3,
              scrollController: widget.controller,
              reflectPosition: -100,
              animationType: AnimationType.findInLeft,
              child: Card(
                elevation: 20,
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 405,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://t4.ftcdn.net/jpg/02/92/76/21/360_F_292762118_dmWqwlN9lDmhqCHKmUYmZW6F7LaUWc80.jpg'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text("Pranjal Oberoy",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25)),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          "BlueBird Software surpassed expectations with our e-commerce website. Their professionalism and expertise were evident throughout the process, resulting in a visually appealing and highly functional platform.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
