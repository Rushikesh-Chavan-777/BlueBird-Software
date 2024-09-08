import 'package:bluebirdsoftware/screens/about_screen.dart';
import 'package:bluebirdsoftware/screens/contact_screen.dart';
import 'package:bluebirdsoftware/screens/create_screen.dart';
import 'package:bluebirdsoftware/screens/services_screen.dart';
import 'package:bluebirdsoftware/screens/why_screen.dart';
import 'package:bluebirdsoftware/widgets/brand.dart';
import 'package:bluebirdsoftware/widgets/desktop/clientele_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/feedback_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/footer_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/form_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/services_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/testimonial_desktop.dart';
import 'package:bluebirdsoftware/widgets/footer.dart';
import 'package:bluebirdsoftware/widgets/desktop/expertise_desktop.dart';
import 'package:bluebirdsoftware/widgets/handset/branding_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/clientele_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/expertise_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/feedback_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/form_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/services_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/testimonial_handset.dart';
import 'package:bluebirdsoftware/widgets/pricing_cards.dart';
import 'package:bluebirdsoftware/widgets/sticky.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:reveal_on_scroll/reveal_on_scroll.dart';
import 'package:smooth_scroll_multiplatform/smooth_scroll_multiplatform.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
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

//wrapper list 1

  List wrapper1 = [
    {
      'id': 1,
      'image_path':
          'https://cdn.dribbble.com/userupload/10654559/file/original-24a0c08be65d8301b08cbb0ed3c5bcae.png?resize=2048x1536'
    },
    {
      'id': 2,
      'image_path':
          'https://cdn.dribbble.com/userupload/3077467/file/original-46b3067a40a0fe1adbec71af3f767483.png?resize=1504x1128'
    },
    {
      'id': 3,
      'image_path':
          'https://cdn.dribbble.com/userupload/5495514/file/original-c2f64d01cfa94a5ba2b463c40ffb1191.png?resize=752x'
    },
    {
      'id': 4,
      'image_path':
          'https://cdn.dribbble.com/userupload/11674533/file/original-581916637a32fc77aed44f44aa5df967.png?resize=2048x1536'
    },
    {
      'id': 5,
      'image_path':
          'https://cdn.dribbble.com/userupload/6666887/file/original-97cd5361a023c5ab5e80a40e5ec03004.png?resize=1504x1128'
    },
  ];

//image list 2

  List wrapper2 = [
    {
      'id': 1,
      'image_path':
          'https://cdn.dribbble.com/userupload/6768155/file/original-07ff2463e90fc42a4a1c441e70583340.png?resize=2048x1536'
    },
    {
      'id': 2,
      'image_path':
          'https://cdn.dribbble.com/userupload/6768155/file/original-07ff2463e90fc42a4a1c441e70583340.png?resize=2048x1536'
    },
    {
      'id': 3,
      'image_path':
          'https://cdn.dribbble.com/userupload/4060955/file/original-d1cbc1e04cb9cf8253ec592d181be7db.png?resize=2048x1536'
    },
    {
      'id': 4,
      'image_path':
          'https://cdn.dribbble.com/userupload/10753227/file/original-d9f008b7355d519c4c2d1e72f1c619ae.png?resize=1504x1128'
    },
    {
      'id': 5,
      'image_path':
          'https://cdn.dribbble.com/users/2120552/screenshots/18232480/media/be646ced2ce8ee3b9b8dc65762cd71ce.png?resize=1600x1200&vertical=center'
    },
  ];

//
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

//start the build

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
        //body
        body: Stack(
          children: [
            DynMouseScroll(
              //should be web scroll smooth
              //controller: _controller,
              builder: (context, controller, physics) => ListView(
                //should be single child scrollable
                //physics: NeverScrollableScrollPhysics(),
                controller: _controller,
                physics: physics,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //start of the navbar
                      width > 600
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  top: 50.0, bottom: 50.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Brand(),
                                  Row(
                                    children: [
                                      TextButton(
                                        onPressed: () async {
                                          final url =
                                              Uri(scheme: 'tel', path: _phone);
                                          //if (await canLaunchUrl(url)) {
                                          // await launchUrl(url);
                                          //}
                                          await analytics.logEvent(
                                              name: 'call');
                                          if (!await launchUrl(url)) {
                                            throw Exception(
                                                'Could not launch $url');
                                          }
                                        },
                                        child: Text(
                                          "Call (+91) 9032870624",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
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
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const AboutScreen()));
                                          },
                                          child: const Text("About",
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
                                          child: const Text("Why chose us?",
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
                                            backgroundColor: Colors.blue,
                                          ),
                                          child: const Text(
                                            "Get your app/website made!!",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            )
                          : BrandingHandset(),

                      //start of create request container
                      width > 600
                          ? Container(
                              padding: (width >= 1200 && width < 1470)
                                  ? EdgeInsets.only(left: 30, right: 30)
                                  : null,
                              height: 500,
                              width: 1200,
                              decoration: const BoxDecoration(),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 500,
                                    child: Wrap(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Center(
                                                child: Text(
                                                  "Get a custom website or a mobile phone application created just for you by our panel of our expert developers at the lowest prices you can possibly think of!!",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 30),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 30),
                                            const Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Center(
                                                child: Text(
                                                  "Click on the button below to contact us and know the prices of getting your custom app or website made!",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 30),
                                            Center(
                                              child: TextButton(
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
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Card(
                                    shadowColor:
                                        Colors.purple, //Colors.orangeAccent,
                                    elevation: 100,
                                    child: CarouselSlider(
                                        items: imageList1
                                            .map((item) => ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  child: Image.network(
                                                    item['image_path'],
                                                    fit: BoxFit.cover,
                                                    width: double.infinity,
                                                  ),
                                                ))
                                            .toList(),
                                        carouselController:
                                            buttonCarouselController,
                                        options: CarouselOptions(
                                          //height: 400,
                                          aspectRatio: (width >= 1470)
                                              ? 1.36
                                              : (width >= 1200 && width <= 1470)
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
                                              Duration(milliseconds: 800),
                                          autoPlayCurve: Curves.fastOutSlowIn,
                                          enlargeCenterPage: true,
                                          enlargeFactor: 0.3,
                                          onPageChanged: (index, reason) {
                                            setState(() {
                                              currentIndex = index;
                                            });
                                          },
                                          scrollDirection: Axis.horizontal,
                                        )),
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              color: Colors.blue,
                              height: 760,
                              width: double.infinity,
                              padding: EdgeInsets.only(
                                  top: 55, right: 15, left: 15, bottom: 15),
                              child: Column(
                                children: [
                                  Wrap(
                                    children: [
                                      Center(
                                        child: Text(
                                          "When innovation meets affordability. Get your quoatation today.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
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
                                          "Get a custom website or a mobile phone application created just for you by our panel of our expert developers at the lowest prices you can possibly think of!!",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w200,
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
                                          style: TextStyle(color: Colors.black),
                                        )),
                                  ),
                                  SizedBox(height: 30),
                                  Card(
                                    shadowColor:
                                        Colors.white, //Colors.orangeAccent,
                                    elevation: 100,
                                    child: CarouselSlider(
                                        items: imageList1
                                            .map((item) => ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  child: Image.network(
                                                    item['image_path'],
                                                    fit: BoxFit.cover,
                                                    width: double.infinity,
                                                  ),
                                                ))
                                            .toList(),
                                        carouselController:
                                            buttonCarouselController,
                                        options: CarouselOptions(
                                          //height: 400,
                                          aspectRatio: (width >= 1470)
                                              ? 1.36
                                              : (width >= 1200 && width <= 1470)
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
                                              Duration(milliseconds: 800),
                                          autoPlayCurve: Curves.fastOutSlowIn,
                                          enlargeCenterPage: true,
                                          enlargeFactor: 0.3,
                                          onPageChanged: (index, reason) {
                                            setState(() {
                                              currentIndex = index;
                                            });
                                          },
                                          scrollDirection: Axis.horizontal,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                      width > 600 ? SizedBox(height: 60) : SizedBox(height: 10),

                      //start of wrapper 1
                      //wrapper 1
                      width > 600
                          ? Container(
                              padding: (width >= 1200 && width < 1470)
                                  ? EdgeInsets.only(left: 60)
                                  : null,
                              height: 500,
                              width: 1300,
                              decoration: const BoxDecoration(),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Card(
                                    shadowColor: Colors.yellow,
                                    elevation: 100,
                                    child: CarouselSlider(
                                        items: wrapper1
                                            .map((item) => ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  child: Image.network(
                                                    item['image_path'],
                                                    fit: BoxFit.cover,
                                                    width: double.infinity,
                                                  ),
                                                ))
                                            .toList(),
                                        carouselController:
                                            buttonCarouselController,
                                        options: CarouselOptions(
                                          //height: 400,
                                          aspectRatio: (width >= 1470)
                                              ? 1.71
                                              : (width >= 1200 && width <= 1470)
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
                                              Duration(milliseconds: 2000),
                                          autoPlayCurve: Curves.fastOutSlowIn,
                                          enlargeCenterPage: true,
                                          enlargeFactor: 0.3,
                                          onPageChanged: (index, reason) {
                                            setState(() {
                                              currentIndex = index;
                                            });
                                          },
                                          scrollDirection: Axis.horizontal,
                                        )),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    width: 400,
                                    child: Wrap(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            ScrollToReveal.withAnimation(
                                              startOnScroll: true,
                                              label: 'Scroll1',
                                              scrollController: _controller,
                                              reflectPosition: -100,
                                              animationType:
                                                  AnimationType.fadeInDown,
                                              child: Padding(
                                                padding: EdgeInsets.all(12.0),
                                                child: Center(
                                                  child: Material(
                                                    elevation: 100,
                                                    shadowColor: Colors.white,
                                                    color: Colors.transparent,
                                                    child: Text(
                                                      "The most appealing, responsive and interactive User Intefaces, customised just for to your needs",
                                                      style: TextStyle(
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          /*fontWeight: FontWeight.bold,*/
                                                          color: Colors.black,
                                                          fontSize: 30),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  //SizedBox(width: 20),
                                ],
                              ),
                            )
                          : Column(
                              children: [
                                ScrollToReveal.withAnimation(
                                  label: 'Scroll15',
                                  scrollController: _controller,
                                  reflectPosition: -100,
                                  animationType: AnimationType.findInLeft,
                                  child: Container(
                                    padding: EdgeInsets.all(30),
                                    width: double.infinity,
                                    height: 200,
                                    child: Center(
                                      child: Text(
                                        "The most appealing, responsive and interactive User Intefaces, customised just for to your needs",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 300,
                                  width: width - 20,
                                  color: Colors.orange,
                                  child: ScrollToReveal.withAnimation(
                                    label: 'Scroll16',
                                    scrollController: _controller,
                                    reflectPosition: -100,
                                    animationType: AnimationType.findInRight,
                                    child: Card(
                                      shadowColor: Colors.yellow,
                                      elevation: 100,
                                      child: CarouselSlider(
                                          items: wrapper1
                                              .map((item) => ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    child: Image.network(
                                                      item['image_path'],
                                                      fit: BoxFit.cover,
                                                      width: double.infinity,
                                                    ),
                                                  ))
                                              .toList(),
                                          carouselController:
                                              buttonCarouselController,
                                          options: CarouselOptions(
                                            //height: 400,
                                            aspectRatio: 1.36,
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
                                                Duration(milliseconds: 2000),
                                            autoPlayCurve: Curves.fastOutSlowIn,
                                            enlargeCenterPage: true,
                                            enlargeFactor: 0.3,
                                            onPageChanged: (index, reason) {
                                              setState(() {
                                                currentIndex = index;
                                              });
                                            },
                                            scrollDirection: Axis.horizontal,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                      //wrapper 2
                      SizedBox(height: 40),
                      width > 600
                          ? Container(
                              padding: (width >= 1200 && width < 1470)
                                  ? EdgeInsets.only(left: 60)
                                  : null,
                              height: 500,
                              width: 1300,
                              decoration: const BoxDecoration(),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 400,
                                    child: Wrap(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            ScrollToReveal.withAnimation(
                                              startOnScroll: true,
                                              label: 'Scroll2',
                                              scrollController: _controller,
                                              reflectPosition: -100,
                                              animationType:
                                                  AnimationType.fadeInDown,
                                              child: Padding(
                                                padding: EdgeInsets.all(12.0),
                                                child: Center(
                                                  child: Material(
                                                    elevation: 100,
                                                    shadowColor: Colors.white,
                                                    color: Colors.transparent,
                                                    child: Text(
                                                      "Integrated Artificial Intelligence, faster development time, more animations, more visuals, better looks all in one place",
                                                      style: TextStyle(
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          /*fontWeight: FontWeight.bold,*/
                                                          color: Colors.black,
                                                          fontSize: 30),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  ScrollToReveal.withAnimation(
                                    startOnScroll: true,
                                    label: 'Scroll3',
                                    scrollController: _controller,
                                    reflectPosition: -100,
                                    animationType: AnimationType.findInRight,
                                    child: Card(
                                      shadowColor: Colors.pinkAccent,
                                      elevation: 100,
                                      child: CarouselSlider(
                                          items: wrapper2
                                              .map((item) => ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    child: Image.network(
                                                      item['image_path'],
                                                      fit: BoxFit.cover,
                                                      width: double.infinity,
                                                    ),
                                                  ))
                                              .toList(),
                                          carouselController:
                                              buttonCarouselController,
                                          options: CarouselOptions(
                                            //height: 400,
                                            aspectRatio: /*1.7*/ (width >= 1470)
                                                ? 1.71
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
                                                Duration(milliseconds: 2000),
                                            autoPlayCurve: Curves.fastOutSlowIn,
                                            enlargeCenterPage: true,
                                            enlargeFactor: 0.3,
                                            onPageChanged: (index, reason) {
                                              setState(() {
                                                currentIndex = index;
                                              });
                                            },
                                            scrollDirection: Axis.horizontal,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(30),
                                  width: double.infinity,
                                  height: 200,
                                  child: ScrollToReveal.withAnimation(
                                    label: 'Scroll17',
                                    scrollController: _controller,
                                    reflectPosition: -100,
                                    animationType: AnimationType.findInLeft,
                                    child: Center(
                                      child: Text(
                                        "Integrated Artificial Intelligence, faster development time, more animations, more visuals, better looks all in one place",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 300,
                                  width: width - 20,
                                  color: Colors.pinkAccent,
                                  child: ScrollToReveal.withAnimation(
                                    label: 'Scroll18',
                                    scrollController: _controller,
                                    reflectPosition: -100,
                                    animationType: AnimationType.findInLeft,
                                    child: Card(
                                      shadowColor: Colors.pinkAccent,
                                      elevation: 100,
                                      child: CarouselSlider(
                                          items: wrapper2
                                              .map((item) => ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    child: Image.network(
                                                      item['image_path'],
                                                      fit: BoxFit.cover,
                                                      width: double.infinity,
                                                    ),
                                                  ))
                                              .toList(),
                                          carouselController:
                                              buttonCarouselController,
                                          options: CarouselOptions(
                                            //height: 400,
                                            aspectRatio: 1.36,
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
                                                Duration(milliseconds: 2000),
                                            autoPlayCurve: Curves.fastOutSlowIn,
                                            enlargeCenterPage: true,
                                            enlargeFactor: 0.3,
                                            onPageChanged: (index, reason) {
                                              setState(() {
                                                currentIndex = index;
                                              });
                                            },
                                            scrollDirection: Axis.horizontal,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      width > 600 ? SizedBox(height: 60) : SizedBox(height: 30),

                      //start of wrapper 3
                      //wrapper 3
                      width > 600
                          ? Container(
                              padding: (width >= 1200 && width < 1470)
                                  ? EdgeInsets.only(left: 60)
                                  : null,
                              height: 500,
                              width: 1300,
                              decoration: const BoxDecoration(),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ScrollToReveal.withAnimation(
                                    startOnScroll: false,
                                    label: 'Scroll4',
                                    scrollController: _controller,
                                    reflectPosition: -100,
                                    animationType: AnimationType.findInLeft,
                                    child: Card(
                                      shadowColor: Colors.lightGreenAccent,
                                      elevation: 100,
                                      child: CarouselSlider(
                                          items: wrapper3
                                              .map((item) => ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    child: Image.network(
                                                      item['image_path'],
                                                      fit: BoxFit.cover,
                                                      width: double.infinity,
                                                    ),
                                                  ))
                                              .toList(),
                                          carouselController:
                                              buttonCarouselController,
                                          options: CarouselOptions(
                                            //height: 400,
                                            aspectRatio: /*1.7*/ (width >= 1470)
                                                ? 1.71
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
                                                Duration(milliseconds: 2000),
                                            autoPlayCurve: Curves.fastOutSlowIn,
                                            enlargeCenterPage: true,
                                            enlargeFactor: 0.3,
                                            onPageChanged: (index, reason) {
                                              setState(() {
                                                currentIndex = index;
                                              });
                                            },
                                            scrollDirection: Axis.horizontal,
                                          )),
                                    ),
                                  ),

                                  const SizedBox(width: 20),
                                  ScrollToReveal.withAnimation(
                                    startOnScroll: false,
                                    label: 'Scroll5',
                                    scrollController: _controller,
                                    reflectPosition: -100,
                                    animationType: AnimationType.fadeInDown,
                                    child: Container(
                                      width: 400,
                                      child: Wrap(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.all(12.0),
                                                child: Center(
                                                  child: Material(
                                                    elevation: 100,
                                                    shadowColor: Colors.white,
                                                    color: Colors.transparent,
                                                    child: Text(
                                                      "Quicker loading speeds with power packed performance, SEO Optimization, organised data management, higher security, and appealing user friendly navigation",
                                                      style: TextStyle(
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          /*fontWeight: FontWeight.bold,*/
                                                          color: Colors.black,
                                                          fontSize: 30),
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
                                  //SizedBox(width: 20),
                                ],
                              ),
                            )
                          : Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(30),
                                  width: double.infinity,
                                  height: 200,
                                  child: ScrollToReveal.withAnimation(
                                    label: 'Scroll19',
                                    scrollController: _controller,
                                    reflectPosition: -100,
                                    animationType: AnimationType.findInLeft,
                                    child: Center(
                                      child: Text(
                                        "Quicker loading speeds with power packed performance, SEO Optimization, organised data management, higher security, and appealing user friendly navigation",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 300,
                                  width: width - 20,
                                  color: Colors.lightGreenAccent,
                                  child: ScrollToReveal.withAnimation(
                                    label: 'Scroll20',
                                    scrollController: _controller,
                                    reflectPosition: -100,
                                    animationType: AnimationType.findInRight,
                                    child: Card(
                                      shadowColor: Colors.lightGreenAccent,
                                      elevation: 100,
                                      child: CarouselSlider(
                                          items: wrapper3
                                              .map((item) => ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    child: Image.network(
                                                      item['image_path'],
                                                      fit: BoxFit.cover,
                                                      width: double.infinity,
                                                    ),
                                                  ))
                                              .toList(),
                                          carouselController:
                                              buttonCarouselController,
                                          options: CarouselOptions(
                                            //height: 400,
                                            aspectRatio: 1.36,
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
                                                Duration(milliseconds: 2000),
                                            autoPlayCurve: Curves.fastOutSlowIn,
                                            enlargeCenterPage: true,
                                            enlargeFactor: 0.3,
                                            onPageChanged: (index, reason) {
                                              setState(() {
                                                currentIndex = index;
                                              });
                                            },
                                            scrollDirection: Axis.horizontal,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      width > 600 ? SizedBox(height: 40) : SizedBox(height: 60),

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~desktop~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                      width > 600
                          ? Column(
                              children: [
//our expertise desktop
                                ExpertiseCardDesktop(
                                  controller: _controller,
                                  tag1: 'home1',
                                  tag2: 'home2',
                                  tag3: 'home3',
                                  tag4: 'home4',
                                  tag5: 'home5',
                                  tag6: 'home6',
                                ),

                                SizedBox(height: 50),
//clientele desktop
                                ClienteleDesktop(),
                                const SizedBox(height: 50),
//client testimonial desktop
                                TestimonialDesktop(),
//client feedback desktop
                                FeedbackDesktop(
                                    controller: _controller,
                                    tag1: 'home!',
                                    tag2: 'home@',
                                    tag3: 'home#',
                                    tag4: 'homeu',
                                    tag5: 'homei',
                                    tag6: 'homeo'),
                                const SizedBox(height: 50),
//our services desktop
                                ServicesDesktop(),
//pricing plan desktop
                                //Cards(),
                              ],
                            )
                          :
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~mobile phone section~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                          Column(
                              children: [
//our expertise mobile phone
                                ExpertiseHanset(
                                    controller: _controller,
                                    tag1: 'Scroll21',
                                    tag2: 'Scroll22',
                                    tag3: 'Scroll23',
                                    tag4: 'Scroll24',
                                    tag5: 'Scroll25',
                                    tag6: 'Scroll26'),
                                SizedBox(height: 50),
//Our Pricing mobile phones
                                //PricingCards(),
//client testimonial mobile phone
                                const SizedBox(height: 50),
                                ClienteleHandset(),
//client testimonial mobile phones
                                const SizedBox(height: 20),
                                TestimonialHandset(),
                                const SizedBox(height: 50),
//client feedback mobile phone
                                FeedbackHandset(
                                    controller: _controller,
                                    tag1: 'hu',
                                    tag2: 'h@',
                                    tag3: 'h#'),
//our services mobile phone
                                ServicesHandset(),
                                const SizedBox(height: 40),
                              ],
                            ),

                      width > 600
                          ? FormDesktop(
                              controller: _controller,
                              tag1: 'scroll1=',
                              tag2: 'scroll1_')
                          : FormHandset(
                              controller: _controller, tag1: 'scroll12'),
//footer
                      width > 600 ? FooterDesktop() : Footer(),
                    ],
                  ),
                ],
              ),
            ),
            Sticky(controller: _controller),
          ],
        ),
      ),
    );
  }
}
