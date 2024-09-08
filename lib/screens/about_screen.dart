import 'package:bluebirdsoftware/popover.dart';
import 'package:bluebirdsoftware/screens/contact_screen.dart';
import 'package:bluebirdsoftware/screens/create_screen.dart';
import 'package:bluebirdsoftware/screens/home_screen.dart';
import 'package:bluebirdsoftware/screens/services_screen.dart';
import 'package:bluebirdsoftware/screens/why_screen.dart';
import 'package:bluebirdsoftware/widgets/brand.dart';
import 'package:bluebirdsoftware/widgets/desktop/expertise_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/footer_desktop.dart';
import 'package:bluebirdsoftware/widgets/footer.dart';
import 'package:bluebirdsoftware/widgets/handset/branding_handset.dart';
import 'package:bluebirdsoftware/widgets/sticky.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:reveal_on_scroll/reveal_on_scroll.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  //the animation controller
  var _controller; //Scrollcntroller _controller = ScrollController();
  @override
  void initState() {
    super.initState();
    analytics.setAnalyticsCollectionEnabled(true);
    _controller = ScrollController();
  }
//end of animation controller

  //for create part
  String valueChose = "Website";
  List list = [
    "Website",
    "App for both android and apple",
    "Both website and app",
    "App for android only",
    "App for apple only"
  ];

  var nameeditingcontroller = TextEditingController();
  var emaileditingcontroller = TextEditingController();
  var numbereditingcontroller = TextEditingController();
  var typeeditingcontroller = TextEditingController();
  var descriptioneditingcontroller = TextEditingController();

  void onsubmit() async {
    if (nameeditingcontroller.text.isEmpty ||
        numbereditingcontroller.text.isEmpty ||
        descriptioneditingcontroller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Please enter all fields so we can appropriately conatct you :)')));
      return;
    }
    FirebaseFirestore.instance.collection('users').add({
      'name': nameeditingcontroller.text,
      'email': emaileditingcontroller.text,
      'number': numbereditingcontroller.text,
      'type': valueChose,
      'description': descriptioneditingcontroller.text,
      'createdAt': DateTime.now(),
    });

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      nameeditingcontroller.clear();
                      emaileditingcontroller.clear();
                      numbereditingcontroller.clear();
                      //valueChose.clear();
                      descriptioneditingcontroller.clear();
                    },
                    child: Text("Ok"))
              ],
              title: Text("Form Submitted Successfully"),
              content: Text(
                  "Our team has received the form and will contact you in less than one hour. Thank you for chosing BlueBird Software."),
              contentPadding: const EdgeInsets.all(20.0),
            ));
    await analytics.logEvent(name: 'form');
    /*ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(
          "Your request was send successfully. Our developer will reach out to you in less than 1 hour."),
      duration: Duration(seconds: 4),
    ));
    Navigator.of(context).pop();*/
  }
  //end of create part

  //image list 1
  List imageList1 = [
    {
      'id': 1,
      'image_path':
          'https://cdn.dribbble.com/users/7904402/screenshots/16928355/media/96850cb2c73d7297daead9761f034b40.png?resize=1600x1200&vertical=center'
    },
    {
      'id': 2,
      'image_path':
          'https://cdn.dribbble.com/users/3036385/screenshots/18848733/media/c8ecfc8a6c08bc20d1ac9529562cbb23.png?resize=1600x1200&vertical=center'
    },
    {
      'id': 3,
      'image_path':
          'https://cdn.dribbble.com/users/6185507/screenshots/16705089/media/889536eec56c890a8467eda6a63aef4a.png'
    },
    {
      'id': 4,
      'image_path':
          'https://cdn.dribbble.com/userupload/11674533/file/original-581916637a32fc77aed44f44aa5df967.png?resize=2048x1536'
    },
    {
      'id': 5,
      'image_path':
          'https://cdn.dribbble.com/userupload/12337651/file/original-da359a34f57d4d1b7a7ef57d17041bea.png?resize=1504x1128&vertical=center'
    },
    {
      'id': 6,
      'image_path':
          'https://cdn.dribbble.com/userupload/11765113/file/original-ae3664237074bfc946f587fdf42dff91.jpg?resize=1024x683'
    },
    {
      'id': 7,
      'image_path':
          'https://cdn.dribbble.com/userupload/10889425/file/original-254a65816e4c514c7387fbcba2f193c7.png?resize=1504x1015'
    },
    {
      'id': 8,
      'image_path':
          'https://cdn.dribbble.com/userupload/3077467/file/original-46b3067a40a0fe1adbec71af3f767483.png?resize=1504x1128'
    },
  ];

  //image list 3

  List wrapper3 = [
    {
      'id': 1,
      'image_path':
          'https://cdn.dribbble.com/userupload/13017062/file/original-b84387956df2d4070907c7dbda0d723b.jpg?resize=2048x1536'
    },
    {
      'id': 2,
      'image_path':
          'https://cdn.dribbble.com/userupload/7015782/file/original-1b3c32b7c3ef7b97f9167ea4aa22041d.png?resize=1504x1128'
    },
    {
      'id': 3,
      'image_path':
          'https://cdn.dribbble.com/users/6185507/screenshots/16705089/media/889536eec56c890a8467eda6a63aef4a.png'
    },
    {
      'id': 4,
      'image_path':
          'https://cdn.dribbble.com/users/2120552/screenshots/18232480/media/be646ced2ce8ee3b9b8dc65762cd71ce.png?resize=1600x1200&vertical=center'
    },
    {
      'id': 5,
      'image_path':
          'https://cdn.dribbble.com/userupload/6778270/file/original-8daa22e02a8e3d1b904e0ebf0a5eea94.jpg?resize=2048x1536'
    },
  ];

//controller and current index
  int currentIndex = 0;
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      // Define MetaSEO object
      MetaSEO meta = MetaSEO();
      // add meta seo data for web app as you want
      meta.author(author: 'BlueBird Software');
      meta.description(
          description:
              'BlueBird Software is your onestop destination for all kind of affordable websites and mobile applications. We aim at affordability and providing the best and most efficient, simple to use User Interafces.');
      meta.keywords(
          keywords:
              'Freelancers, Websites, BlueBird Software, blue bird software, Apps, Android, Android Apps, IOS, IOS Apps, Apple, Apple apps, Web Development, App Development, Cross Plattform, Custom Websites, Affordable Websites, Custom apps, Affordable apps, Wix, Upwork, Wordpress, Fiverr, Freelancing, Outsource, ');
    }
//variables
    var width = MediaQuery.of(context).size.width;
    String _phone = '+91 9032870624';

//build
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            WebSmoothScroll(
              controller: _controller,
              child: SingleChildScrollView(
                //physics: NeverScrollableScrollPhysics(),
                controller: _controller,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 60),
                      child: SingleChildScrollView(
                        child: Wrap(
                          children: [
                            Column(
                              children: [
                                width > 600
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            top: 50.0, bottom: 50.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            //first row
                                            Brand(),
                                            Row(
                                              children: [
                                                TextButton(
                                                  onPressed: () async {
                                                    await analytics.logEvent(
                                                        name: 'call');
                                                    final url = Uri(
                                                        scheme: 'tel',
                                                        path: _phone);
                                                    if (!await launchUrl(url)) {
                                                      throw Exception(
                                                          'Could not launch $url');
                                                    }
                                                  },
                                                  child: Text(
                                                    "Call (+91) 9032870624",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const HomeScreen()));
                                                    },
                                                    child: const Text("Home",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize:
                                                              20, /*fontWeight: FontWeight.w600*/
                                                        ))),
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const ServicesScreen()));
                                                    },
                                                    child: const Text("Services",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize:
                                                              20, /*fontWeight: FontWeight.w600*/
                                                        ))),
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const ContactSCreen()));
                                                    },
                                                    child: const Text("Contact",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize:
                                                              20, /*fontWeight: FontWeight.w600*/
                                                        ))),
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const CreateScreen()));
                                                    },
                                                    child: const Text("Create",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize:
                                                              20, /*fontWeight: FontWeight.w600*/
                                                        ))),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const WhyScreen()));
                                                    },
                                                    child: const Text(
                                                        "Why chose us?",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize:
                                                              20, /*fontWeight: FontWeight.w600*/
                                                        ))),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const CreateScreen()));
                                                    },
                                                    style: TextButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.blue,
                                                    ),
                                                    child: const Text(
                                                      "Get your app/website made!!",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    : BrandingHandset(),
                                //sizedbox 30
              
                                //solid blue section
                                width <= 600
                                    ? Container(
                                        color: Colors.blue,
                                        height: 1850,
                                        width: double.infinity,
                                        padding: EdgeInsets.only(
                                            top: 55,
                                            right: 15,
                                            left: 15,
                                            bottom: 15),
                                        child: Column(
                                          children: [
                                            Wrap(
                                              children: [
                                                Center(
                                                  child: Text(
                                                    "About Us",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 35),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 30),
                                            Wrap(
                                              children: [
                                                Center(
                                                  child: Text(
                                                    "At Bluebird Software, we're passionate about empowering businesses with innovative digital solutions that elevate their online presence. Established with a vision to make high-quality websites and mobile apps accessible to businesses of all sizes, we strive to be a trusted partner in your digital journey.",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 20),
              
                                            //card
                                            Card(
                                              //shadowColor: Colors.white, //Colors.orangeAccent,
                                              elevation: 100,
                                              child: CarouselSlider(
                                                  items: imageList1
                                                      .map((item) => ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            child: Image.network(
                                                              item['image_path'],
                                                              fit: BoxFit.cover,
                                                              width:
                                                                  double.infinity,
                                                            ),
                                                          ))
                                                      .toList(),
                                                  carouselController:
                                                      buttonCarouselController,
                                                  options: CarouselOptions(
                                                    //height: 400,
                                                    aspectRatio: (width >= 1470)
                                                        ? 1.36
                                                        : (width >= 1200 &&
                                                                width <= 1470)
                                                            ? 1.23
                                                            : 1.36,
                                                    scrollPhysics:
                                                        BouncingScrollPhysics(),
                                                    viewportFraction: 1,
                                                    initialPage: 0,
                                                    enableInfiniteScroll: true,
                                                    reverse: false,
                                                    autoPlay: true,
                                                    autoPlayInterval:
                                                        Duration(seconds: 3),
                                                    autoPlayAnimationDuration:
                                                        Duration(
                                                            milliseconds: 800),
                                                    autoPlayCurve:
                                                        Curves.fastOutSlowIn,
                                                    enlargeCenterPage: true,
                                                    enlargeFactor: 0.3,
                                                    onPageChanged:
                                                        (index, reason) {
                                                      setState(() {
                                                        currentIndex = index;
                                                      });
                                                    },
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                  )),
                                            ),
                                            const SizedBox(height: 40),
              
                                            Wrap(
                                              children: [
                                                Center(
                                                  child: Text(
                                                    " Our Story",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 35),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 30),
              
                                            Wrap(
                                              children: [
                                                ScrollToReveal.withAnimation(
                                                  label: 'about1',
                                                  scrollController: _controller,
                                                  reflectPosition: -100,
                                                  animationType:
                                                      AnimationType.findInLeft,
                                                  child: Center(
                                                    child: Text(
                                                      "Bluebird Software was founded on the belief that every business deserves a stunning online presence without breaking the bank. Our journey began with a team of passionate developers and designers who shared a common goal: to revolutionize the digital landscape by providing affordable yet premium-quality services.",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Colors.white,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 20),
              
                                            Wrap(
                                              children: [
                                                ScrollToReveal.withAnimation(
                                                  label: 'about2',
                                                  scrollController: _controller,
                                                  reflectPosition: -100,
                                                  animationType:
                                                      AnimationType.findInRight,
                                                  child: Center(
                                                    child: Text(
                                                      "Since our inception, we've helped countless businesses across diverse industries achieve their digital goals. From startups looking to establish their brand identity to established enterprises aiming to stay ahead of the competition, we've had the privilege of collaborating with clients of all sizes and backgrounds.",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Colors.white,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 20),
              
                                            //card
                                            ScrollToReveal.withAnimation(
                                              label: 'about3',
                                              scrollController: _controller,
                                              reflectPosition: -100,
                                              animationType:
                                                  AnimationType.fadeInDown,
                                              child: Card(
                                                //shadowColor: Colors.white, //Colors.orangeAccent,
                                                elevation: 100,
                                                child: CarouselSlider(
                                                    items: imageList1
                                                        .map((item) => ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                              child:
                                                                  Image.network(
                                                                item[
                                                                    'image_path'],
                                                                fit: BoxFit.cover,
                                                                width: double
                                                                    .infinity,
                                                              ),
                                                            ))
                                                        .toList(),
                                                    carouselController:
                                                        buttonCarouselController,
                                                    options: CarouselOptions(
                                                      //height: 400,
                                                      aspectRatio: (width >= 1470)
                                                          ? 1.36
                                                          : (width >= 1200 &&
                                                                  width <= 1470)
                                                              ? 1.23
                                                              : 1.36,
                                                      scrollPhysics:
                                                          BouncingScrollPhysics(),
                                                      viewportFraction: 1,
                                                      initialPage: 0,
                                                      enableInfiniteScroll: true,
                                                      reverse: false,
                                                      autoPlay: true,
                                                      autoPlayInterval:
                                                          Duration(seconds: 3),
                                                      autoPlayAnimationDuration:
                                                          Duration(
                                                              milliseconds: 800),
                                                      autoPlayCurve:
                                                          Curves.fastOutSlowIn,
                                                      enlargeCenterPage: true,
                                                      enlargeFactor: 0.3,
                                                      onPageChanged:
                                                          (index, reason) {
                                                        setState(() {
                                                          currentIndex = index;
                                                        });
                                                      },
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                    )),
                                              ),
                                            ),
                                            const SizedBox(height: 40),
                                            //last form proposal
                                            Wrap(
                                              children: [
                                                Center(
                                                  child: Text(
                                                    "Click to fill our form and get a quotaion today",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 20),
                                            Center(
                                              child: TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const CreateScreen()));
                                                  },
                                                  style: TextButton.styleFrom(
                                                    backgroundColor: Colors.white,
                                                  ),
                                                  child: const Text(
                                                    "Get your app/website made!!",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  )),
                                            ),
                                            SizedBox(height: 30),
                                          ],
                                        ),
                                      )
                                    : Container(
                                        padding: EdgeInsets.only(
                                            right: 200, left: 200, top: 30),
                                        width: double.infinity,
                                        //height: 900,
                                        color: Colors.blue,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Welcome to Bluebird Software Services!",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 35),
                                            ),
                                            Divider(
                                              indent: 40,
                                              endIndent: 40,
                                              thickness: 5,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(height: 30),
                                            Text(
                                              "At Bluebird Software, we're passionate about empowering businesses with innovative digital solutions that elevate their online presence. Established with a vision to make high-quality websites and mobile apps accessible to businesses of all sizes, we strive to be a trusted partner in your digital journey.",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 25),
                                            ),
                                            const SizedBox(height: 20),
                                            Text(
                                              "With our team of skilled developers and designers, we specialize in crafting tailor-made solutions that not only meet but exceed our clients' expectations. Whether you're a startup looking to establish your digital footprint or an established business aiming to revamp your online presence, we've got you covered.",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 25),
                                            ),
                                            const SizedBox(height: 30),
                                            Card(
                                              shadowColor:
                                                  Colors.lightGreenAccent,
                                              elevation: 100,
                                              child: CarouselSlider(
                                                  items: wrapper3
                                                      .map((item) => ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            child: Image.network(
                                                              item['image_path'],
                                                              fit: BoxFit.cover,
                                                              width:
                                                                  double.infinity,
                                                            ),
                                                          ))
                                                      .toList(),
                                                  carouselController:
                                                      buttonCarouselController,
                                                  options: CarouselOptions(
                                                    //height: 400,
                                                    aspectRatio: /*1.7*/
                                                        (width >= 1470)
                                                            ? 2
                                                            : (width >= 1200 &&
                                                                    width <= 1470)
                                                                ? 1.36
                                                                : 1.36,
                                                    scrollPhysics:
                                                        BouncingScrollPhysics(),
                                                    viewportFraction: 1,
                                                    initialPage: 0,
                                                    enableInfiniteScroll: true,
                                                    reverse: false,
                                                    autoPlay: true,
                                                    autoPlayInterval:
                                                        Duration(seconds: 5),
                                                    autoPlayAnimationDuration:
                                                        Duration(
                                                            milliseconds: 2000),
                                                    autoPlayCurve:
                                                        Curves.fastOutSlowIn,
                                                    enlargeCenterPage: true,
                                                    enlargeFactor: 0.3,
                                                    onPageChanged:
                                                        (index, reason) {
                                                      setState(() {
                                                        currentIndex = index;
                                                      });
                                                    },
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                  )),
                                            ),
                                            const SizedBox(height: 30),
                                            ScrollToReveal.withAnimation(
                                              label: 'abt1',
                                              scrollController: _controller,
                                              reflectPosition: -100,
                                              animationType:
                                                  AnimationType.findInLeft,
                                              child: Text(
                                                "Our story",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 35),
                                              ),
                                            ),
                                            Divider(
                                              indent: 40,
                                              endIndent: 40,
                                              thickness: 5,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(height: 30),
                                            ScrollToReveal.withAnimation(
                                              label: 'abt2',
                                              scrollController: _controller,
                                              reflectPosition: -100,
                                              animationType:
                                                  AnimationType.fadeInDown,
                                              child: Text(
                                                "Bluebird Software was founded on the belief that every business deserves a stunning online presence without breaking the bank. Our journey began with a team of passionate developers and designers who shared a common goal: to revolutionize the digital landscape by providing affordable yet premium-quality services.",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 25),
                                              ),
                                            ),
                                            const SizedBox(height: 20),
                                            ScrollToReveal.withAnimation(
                                              label: 'abt3',
                                              scrollController: _controller,
                                              reflectPosition: -100,
                                              animationType:
                                                  AnimationType.findInLeft,
                                              child: Text(
                                                "Since our inception, we've helped countless businesses across diverse industries achieve their digital goals. From startups looking to establish their brand identity to established enterprises aiming to stay ahead of the competition, we've had the privilege of collaborating with clients of all sizes and backgrounds.",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 25),
                                              ),
                                            ),
                                            const SizedBox(height: 30),
                                            ScrollToReveal.withAnimation(
                                              label: 'abt4',
                                              scrollController: _controller,
                                              reflectPosition: -100,
                                              animationType:
                                                  AnimationType.findInLeft,
                                              child: Card(
                                                shadowColor:
                                                    Colors.lightGreenAccent,
                                                elevation: 100,
                                                child: CarouselSlider(
                                                    items: wrapper3
                                                        .map((item) => ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                              child:
                                                                  Image.network(
                                                                item[
                                                                    'image_path'],
                                                                fit: BoxFit.cover,
                                                                width: double
                                                                    .infinity,
                                                              ),
                                                            ))
                                                        .toList(),
                                                    carouselController:
                                                        buttonCarouselController,
                                                    options: CarouselOptions(
                                                      //height: 400,
                                                      aspectRatio: /*1.7*/
                                                          (width >= 1470)
                                                              ? 2
                                                              : (width >= 1200 &&
                                                                      width <=
                                                                          1470)
                                                                  ? 1.36
                                                                  : 1.36,
                                                      scrollPhysics:
                                                          BouncingScrollPhysics(),
                                                      viewportFraction: 1,
                                                      initialPage: 0,
                                                      enableInfiniteScroll: true,
                                                      reverse: false,
                                                      autoPlay: true,
                                                      autoPlayInterval:
                                                          Duration(seconds: 5),
                                                      autoPlayAnimationDuration:
                                                          Duration(
                                                              milliseconds: 2000),
                                                      autoPlayCurve:
                                                          Curves.fastOutSlowIn,
                                                      enlargeCenterPage: true,
                                                      enlargeFactor: 0.3,
                                                      onPageChanged:
                                                          (index, reason) {
                                                        setState(() {
                                                          currentIndex = index;
                                                        });
                                                      },
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                    )),
                                              ),
                                            ),
                                            SizedBox(height: 30),
                                          ],
                                        ),
                                      ),
                                const SizedBox(height: 40),
              
                                //Rich text 1
                                width > 600
                                    ? Column(
                                        children: [
                                          ExpertiseCardDesktop(controller: _controller, tag1: 'abt5', tag2: 'abt6', tag3: 'abt7', tag4: 'abt8', tag5: 'abt9', tag6: 'abt10'),
                                          SizedBox(height: 50),
                                        ],
                                      )
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ScrollToReveal.withAnimation(
                                            label: 'about4',
                                            scrollController: _controller,
                                            reflectPosition: -100,
                                            animationType:
                                                AnimationType.fadeInDown,
                                            child: Center(
                                              child: Container(
                                                  height: 150,
                                                  width: 200,
                                                  child: Text(
                                                    "Grow your business with BlueBird Software today. Fill the form below to get a qouatation",
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  )),
                                            ),
                                          ),
                                          ScrollToReveal.withAnimation(
                                            label: 'about5',
                                            scrollController: _controller,
                                            reflectPosition: -100,
                                            animationType:
                                                AnimationType.bounceInRight,
                                            child: Center(
                                                child: Image.asset(
                                                    "lib/assets/images/bird_logo.jpeg",
                                                    height: 200)),
                                          ),
                                        ],
                                      ),
                                ScrollToReveal.withAnimation(
                                  label: 'about6',
                                  scrollController: _controller,
                                  reflectPosition: -100,
                                  animationType: AnimationType.findInLeft,
                                  child: Center(
                                    child: Container(
                                      margin: const EdgeInsets.all(20),
                                      padding: const EdgeInsets.all(25),
                                      height: 600,
                                      width: 600,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Enter your details so we can contact you for a very professional meeting to decide the prices of your website/app. And then, finally we can finally make it for you in the amount of time you want. We usualy respond within 2 to 3 hours",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          Row(
                                            children: [
                                              const Text("Select what you need"),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              DropdownButton(
                                                hint: const Text(
                                                    "Select what you want. Website/app/both?"),
                                                value: valueChose,
                                                onChanged: (newValue) {
                                                  setState(() {
                                                    valueChose =
                                                        newValue.toString();
                                                  });
                                                },
                                                items: list.map((valueItem) {
                                                  return DropdownMenuItem(
                                                      value: valueItem,
                                                      child: Text(valueItem));
                                                }).toList(),
                                              ),
                                            ],
                                          ),
                                          TextFormField(
                                            controller: nameeditingcontroller,
                                            autocorrect: false,
                                            decoration: const InputDecoration(
                                              labelText: 'Name',
                                            ),
                                          ),
                                          TextFormField(
                                            controller: emaileditingcontroller,
                                            autocorrect: false,
                                            decoration: const InputDecoration(
                                              labelText: 'Email',
                                            ),
                                          ),
                                          TextFormField(
                                            controller: numbereditingcontroller,
                                            autocorrect: false,
                                            decoration: const InputDecoration(
                                              labelText: 'Phone',
                                            ),
                                          ),
                                          TextFormField(
                                            controller:
                                                descriptioneditingcontroller,
                                            autocorrect: false,
                                            decoration: const InputDecoration(
                                              labelText: 'Website Description',
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: onsubmit,
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.blue,
                                            ),
                                            child: const Text("Submit",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
              //footer
                    width>600 ? FooterDesktop(): Footer(),
                  ],
                ),
              ),
            ),
            Sticky(controller: _controller),
          ],
        ),
      ),
    );
  }
}
