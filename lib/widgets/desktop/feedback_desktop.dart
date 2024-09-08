import 'package:flutter/material.dart';
import 'package:reveal_on_scroll/reveal_on_scroll.dart';

class FeedbackDesktop extends StatefulWidget {
  const FeedbackDesktop(
      {super.key,
      required this.controller,
      required this.tag1,
      required this.tag2,
      required this.tag3,
      required this.tag4,
      required this.tag5,
      required this.tag6});
  final controller;
  final String tag1;
  final String tag2;
  final String tag3;
  final String tag4;
  final String tag5;
  final String tag6;

  @override
  State<FeedbackDesktop> createState() => _FeedbackDesktopState();
}

class _FeedbackDesktopState extends State<FeedbackDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Client Feedback",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 55,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        Wrap(
          children: [
            SizedBox(width: 10),
            //card 1 : e- commerce
            ScrollToReveal.withAnimation(
              label: widget.tag1,
              scrollController: widget.controller,
              reflectPosition: -100,
              animationType: AnimationType.findInLeft,
              child: Card(
                elevation: 20,
                child: Container(
                  color: Colors.white,
                  width: 400,
                  height: 405,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 20),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/4307869/pexels-photo-4307869.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
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
                                Icons.star,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text("Deepinder Singh",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25)),
                          SizedBox(height: 20),
                          Center(
                            child: Text(
                              "BlueBird Software's professionalism and creativity surpassed our expectations. Our website and mobile app are visually stunning and highly functional. We're thrilled with the results and highly recommend their services!",
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
            const SizedBox(width: 20),

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
                  width: 400,
                  height: 405,
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
            const SizedBox(width: 20),

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
                  width: 400,
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
            const SizedBox(width: 20),
            //end of row 1
          ],
        ),
        const SizedBox(height: 25),
        Wrap(
          children: [
            SizedBox(width: 10),
            //card 1 : e- commerce
            ScrollToReveal.withAnimation(
              label: widget.tag4,
              scrollController: widget.controller,
              reflectPosition: -100,
              animationType: AnimationType.findInLeft,
              child: Card(
                elevation: 20,
                child: Container(
                  color: Colors.white,
                  width: 400,
                  height: 405,
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
            const SizedBox(width: 20),
            //card 2
            //card 1 : e- commerce
            ScrollToReveal.withAnimation(
              label: widget.tag5,
              scrollController: widget.controller,
              reflectPosition: -100,
              animationType: AnimationType.findInLeft,
              child: Card(
                elevation: 20,
                child: Container(
                  color: Colors.white,
                  width: 400,
                  height: 405,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://media.istockphoto.com/id/1368215673/video/4k-video-footage-of-a-handsome-young-businessman-standing-alone-in-his-office-during-the-day.jpg?s=640x640&k=20&c=gBEUf0TiVeJZFYpaNAASY_Dfqc_DlYDrYNqkok0V1LQ='),
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
                            Icons.star,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text("Aadi Roy",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25)),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "BlueBird Software's restaurant website impresses! It's visually appealing and user-friendly, elevating our online presence. Their professionalism and attention to detail made the process effortless. Highly recommended!",
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
            const SizedBox(width: 20),
            //card 3
            //card 1 : e- commerce
            ScrollToReveal.withAnimation(
              label: widget.tag6,
              scrollController: widget.controller,
              reflectPosition: -100,
              animationType: AnimationType.findInLeft,
              child: Card(
                elevation: 20,
                child: Container(
                  color: Colors.white,
                  width: 400,
                  height: 405,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://media.istockphoto.com/id/144324264/photo/business-abroad.jpg?s=612x612&w=0&k=20&c=UgWVzVEya-YQOgGk4McE8vYQj_QDzo7fCip41Ian45A='),
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
                            Icons.star,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text("Priyanka Arora",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25)),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          "BlueBird Software excels with our clinic app. It's intuitive, efficient, and enhances patient care. Their expertise and attention to detail ensured a seamless process. Highly recommend for any healthcare practice!",
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
            const SizedBox(width: 20),
            //end of row 1
          ],
        ),
      ],
    );
  }
}
