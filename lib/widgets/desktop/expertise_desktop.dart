import 'package:flutter/material.dart';
import 'package:reveal_on_scroll/reveal_on_scroll.dart';
import 'package:uuid/uuid.dart';

class ExpertiseCardDesktop extends StatefulWidget {
  const ExpertiseCardDesktop(
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
  State<ExpertiseCardDesktop> createState() => _ExpertiseCardDesktopState();
}

class _ExpertiseCardDesktopState extends State<ExpertiseCardDesktop> {
  var _controller;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 600
        ? Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Our expertise",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 55,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 20),
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
                        height: 400,
                        child: Column(
                          children: [
                            Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD6CntfYYa7Tav29Es9FC0u2rHdhB754ithw&usqp=CAU',
                                height: 140,
                                width: 140),
                            //LottieBuilder.network('https://www.zuplic.com/wp-content/uploads/2018/07/eCommerce-Animated-GIF.gif')
                            SizedBox(height: 10),
                            Text("E-Commerce",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25)),
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                "We create e-commerce platforms with sleek design and robust functionality, empowering businesses to thrive online with seamless navigation and secure transactions.",
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
                        height: 400,
                        child: Column(
                          children: [
                            //SvgPicture.network("https://png.pngtree.com/png-clipart/20200701/original/pngtree-business-concept-of-online-shopping-e-commerce-png-image_5345089.jpg")
                            Image.network(
                                'https://as2.ftcdn.net/v2/jpg/01/06/33/85/1000_F_106338591_rBse5F7oCAw2jhwfO56NUHxrbwvuZU4G.jpg',
                                height: 140,
                                width: 140),
                            //LottieBuilder.network('https://www.zuplic.com/wp-content/uploads/2018/07/eCommerce-Animated-GIF.gif')
                            SizedBox(height: 10),
                            Text("Restaurant/cafe",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25)),
                            SizedBox(height: 10),
                            Center(
                              child: Text(
                                "Our restaurant and cafe websites/apps blend captivating visuals with seamless functionality, showcasing menus, facilitating reservations, and engaging customers with interactive features for enhanced dining experiences.",
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
                        height: 400,
                        child: Column(
                          children: [
                            //SvgPicture.network("https://png.pngtree.com/png-clipart/20200701/original/pngtree-business-concept-of-online-shopping-e-commerce-png-image_5345089.jpg")
                            Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnWDBm2vLn9Ij3UJ4I9n4X1v7O4_sEbk6PB1x368ia7MetDmUeFIOZGczVt7jWnO6bWYs&usqp=CAU',
                                height: 140,
                                width: 140),
                            //LottieBuilder.network('https://www.zuplic.com/wp-content/uploads/2018/07/eCommerce-Animated-GIF.gif')
                            SizedBox(height: 10),
                            Text("A.I Integrated Software",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25)),
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                "Revolutionizing user experiences, our AI-integrated websites/apps anticipate needs, automate tasks, and deliver personalized solutions for enhanced efficiency and engagement in the digital landscape.",
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
              //wrap 2
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
                        height: 400,
                        child: Column(
                          children: [
                            //SvgPicture.network("https://png.pngtree.com/png-clipart/20200701/original/pngtree-business-concept-of-online-shopping-e-commerce-png-image_5345089.jpg")
                            Image.network(
                                'https://thumbs.dreamstime.com/b/dreamstime-template-198954295.jpg',
                                height: 140,
                                width: 140),
                            //LottieBuilder.network('https://www.zuplic.com/wp-content/uploads/2018/07/eCommerce-Animated-GIF.gif')
                            SizedBox(height: 10),
                            Text("Healthcare",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25)),
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                "Our healthcare websites/apps prioritize seamless patient care with intuitive interfaces, secure access to records, and telemedicine capabilities, fostering trust and convenience.",
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
                        height: 400,
                        child: Column(
                          children: [
                            //SvgPicture.network("https://png.pngtree.com/png-clipart/20200701/original/pngtree-business-concept-of-online-shopping-e-commerce-png-image_5345089.jpg")
                            Image.network(
                                'https://cdn.pixabay.com/photo/2024/01/10/05/33/ai-generated-8498920_640.jpg',
                                height: 140,
                                width: 140),
                            //LottieBuilder.network('https://www.zuplic.com/wp-content/uploads/2018/07/eCommerce-Animated-GIF.gif')
                            SizedBox(height: 10),
                            Text("Gym/Fitness",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25)),
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                "Our gym/fitness websites/apps offer intuitive interfaces, personalized training plans, and community support, empowering users to achieve their fitness goals effectively.",
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
                        height: 400,
                        child: Column(
                          children: [
                            //SvgPicture.network("https://png.pngtree.com/png-clipart/20200701/original/pngtree-business-concept-of-online-shopping-e-commerce-png-image_5345089.jpg")
                            Image.network(
                                'https://png.pngtree.com/template/20190316/ourmid/pngtree-accounting-logo-image_80363.jpg',
                                height: 140,
                                width: 140),
                            //LottieBuilder.network('https://www.zuplic.com/wp-content/uploads/2018/07/eCommerce-Animated-GIF.gif')
                            SizedBox(height: 10),
                            Text("Accounting/Trading",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25)),
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                "Our accounting/trading platforms provide intuitive interfaces, real-time market insights, and secure transactions, empowering users to manage finances and optimize investments with ease.",
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
                  //end of row 2
                ],
              ),
              SizedBox(height: 50),
            ],
          )
        : Column(
            children: [
              //our expertise mobile phone
              Text(
                "Our expertise",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ScrollToReveal.withAnimation(
                    label: Uuid().v1(), //'Scroll21',
                    scrollController: _controller,
                    reflectPosition: -100,
                    animationType: AnimationType.findInLeft,
                    child: Card(
                      elevation: 20,
                      child: Container(
                        color: Colors.white,
                        width: 195,
                        height: 330,
                        child: Column(
                          children: [
                            Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD6CntfYYa7Tav29Es9FC0u2rHdhB754ithw&usqp=CAU',
                                height: 80,
                                width: 80),
                            SizedBox(height: 10),
                            Text(
                              "E-Commerce",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                "We create e-commerce platforms with sleek design and robust functionality, empowering businesses to thrive online with seamless navigation and secure transactions.",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ScrollToReveal.withAnimation(
                    label: 'Scroll22',
                    scrollController: _controller,
                    reflectPosition: -100,
                    animationType: AnimationType.findInRight,
                    child: Card(
                      elevation: 20,
                      child: Container(
                        color: Colors.white,
                        width: 195,
                        height: 330,
                        child: Column(
                          children: [
                            Image.network(
                                'https://as2.ftcdn.net/v2/jpg/01/06/33/85/1000_F_106338591_rBse5F7oCAw2jhwfO56NUHxrbwvuZU4G.jpg',
                                height: 50,
                                width: 70),
                            SizedBox(height: 10),
                            Text("Restaurants/Cafe",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                "Our restaurant and cafe websites/apps blend captivating visuals with seamless functionality, showcasing menus, facilitating reservations, and engaging customers with interactive features for enhanced dining experiences.",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15),
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
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ScrollToReveal.withAnimation(
                    label: 'Scroll23',
                    scrollController: _controller,
                    reflectPosition: -100,
                    animationType: AnimationType.findInLeft,
                    child: Card(
                      elevation: 20,
                      child: Container(
                        color: Colors.white,
                        width: 195,
                        height: 330,
                        child: Column(
                          children: [
                            //SvgPicture.network("https://png.pngtree.com/png-clipart/20200701/original/pngtree-business-concept-of-online-shopping-e-commerce-png-image_5345089.jpg")
                            Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnWDBm2vLn9Ij3UJ4I9n4X1v7O4_sEbk6PB1x368ia7MetDmUeFIOZGczVt7jWnO6bWYs&usqp=CAU',
                                height: 50,
                                width: 50),
                            //LottieBuilder.network('https://www.zuplic.com/wp-content/uploads/2018/07/eCommerce-Animated-GIF.gif')
                            SizedBox(height: 10),
                            Text("A.I integration",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                "Revolutionizing user experiences, our AI-integrated websites/apps anticipate needs, automate tasks, and deliver personalized solutions for enhanced efficiency and engagement in the digital landscape.",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ScrollToReveal.withAnimation(
                    label: 'Scroll24',
                    scrollController: _controller,
                    reflectPosition: -100,
                    animationType: AnimationType.findInRight,
                    child: Card(
                      elevation: 20,
                      child: Container(
                        color: Colors.white,
                        width: 195,
                        height: 330,
                        child: Column(
                          children: [
                            //SvgPicture.network("https://png.pngtree.com/png-clipart/20200701/original/pngtree-business-concept-of-online-shopping-e-commerce-png-image_5345089.jpg")
                            Image.network(
                                'https://thumbs.dreamstime.com/b/dreamstime-template-198954295.jpg',
                                height: 50,
                                width: 50),
                            //LottieBuilder.network('https://www.zuplic.com/wp-content/uploads/2018/07/eCommerce-Animated-GIF.gif')
                            SizedBox(height: 10),
                            Text("Healthcare",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                "Our healthcare websites/apps prioritize seamless patient care with intuitive interfaces, secure access to records, and telemedicine capabilities, fostering trust and convenience.",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15),
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
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ScrollToReveal.withAnimation(
                    label: 'Scroll25',
                    scrollController: _controller,
                    reflectPosition: -100,
                    animationType: AnimationType.findInLeft,
                    child: Card(
                      elevation: 20,
                      child: Container(
                        color: Colors.white,
                        width: 195,
                        height: 330,
                        child: Column(
                          children: [
                            //SvgPicture.network("https://png.pngtree.com/png-clipart/20200701/original/pngtree-business-concept-of-online-shopping-e-commerce-png-image_5345089.jpg")
                            Image.network(
                                'https://cdn.pixabay.com/photo/2024/01/10/05/33/ai-generated-8498920_640.jpg',
                                height: 50,
                                width: 50),
                            //LottieBuilder.network('https://www.zuplic.com/wp-content/uploads/2018/07/eCommerce-Animated-GIF.gif')
                            SizedBox(height: 10),
                            Text("Gym/Fitness",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                "Our gym/fitness websites/apps offer intuitive interfaces, personalized training plans, and community support, empowering users to achieve their fitness goals effectively.",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ScrollToReveal.withAnimation(
                    //startOnScroll: true,
                    label: 'Scroll26',
                    scrollController: _controller,
                    reflectPosition: -100,
                    animationType: AnimationType.findInRight,
                    child: Card(
                      elevation: 20,
                      child: Container(
                        color: Colors.white,
                        width: 195,
                        height: 330,
                        child: Column(
                          children: [
                            //SvgPicture.network("https://png.pngtree.com/png-clipart/20200701/original/pngtree-business-concept-of-online-shopping-e-commerce-png-image_5345089.jpg")
                            Image.network(
                                'https://img.freepik.com/free-vector/gradient-accounting-logo-template_23-2148863565.jpg',
                                height: 100,
                                width: 100),
                            //LottieBuilder.network('https://www.zuplic.com/wp-content/uploads/2018/07/eCommerce-Animated-GIF.gif')
                            SizedBox(height: 10),
                            Text("Accounting/Trading",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 20),
                            Center(
                              child: Text(
                                "Our accounting/trading platforms provide intuitive interfaces, real-time market insights",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15),
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
