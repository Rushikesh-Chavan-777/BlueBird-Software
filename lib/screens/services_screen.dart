import 'package:bluebirdsoftware/screens/about_screen.dart';
import 'package:bluebirdsoftware/screens/contact_screen.dart';
import 'package:bluebirdsoftware/screens/create_screen.dart';
import 'package:bluebirdsoftware/screens/home_screen.dart';
import 'package:bluebirdsoftware/widgets/brand.dart';
import 'package:bluebirdsoftware/widgets/desktop/clientele_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/feedback_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/form_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/services_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/testimonial_desktop.dart';
import 'package:bluebirdsoftware/widgets/footer.dart';
import 'package:bluebirdsoftware/widgets/handset/branding_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/clientele_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/expertise_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/feedback_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/form_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/services_handset.dart';
import 'package:bluebirdsoftware/widgets/pricing_cards.dart';
import 'package:bluebirdsoftware/widgets/sticky.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:reveal_on_scroll/reveal_on_scroll.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
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
//
//
//
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



    //final ScrollController _controller = ScrollController();

    //end of create part

//variables
    var width = MediaQuery.of(context).size.width;
    String _phone = '+91 9032870624';

//build
    return width < 600
        ? Container(
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
                                      //header for phone
                                      BrandingHandset(),
                                      //const SizedBox(height: 30),
                                      Container(
                                        color: Colors.blue,
                                        height: 1440,
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
                                                    "Our services",
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
                                                    "At Bluebird Software, we believe that every business, big or small, deserves a stunning online presence without breaking the bank. Our mission is simple: to provide high-quality websites and mobile apps with the most interactive and modern user interfaces at the most affordable rates.",
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
                    
                                            ScrollToReveal.withAnimation(
                                              label: 'Scroll1',
                                              scrollController: _controller,
                                              reflectPosition: -100,
                                              animationType:
                                                  AnimationType.fadeInDown,
                                              child: Wrap(
                                                children: [
                                                  Center(
                                                    child: Text(
                                                      "With our team of skilled developers and designers, we specialize in crafting tailor-made solutions that not only meet but exceed our clients' expectations. Whether you're a startup looking to establish your digital footprint or an established business aiming to revamp your online presence, we've got you covered.",
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
                                            ),
                                            const SizedBox(height: 20),
                    
                                            //card
                                            ScrollToReveal.withAnimation(
                                              label: 'Scroll2',
                                              scrollController: _controller,
                                              reflectPosition: -100,
                                              animationType:
                                                  AnimationType.findInLeft,
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
                                            ScrollToReveal.withAnimation(
                                              label: 'Scroll3',
                                              scrollController: _controller,
                                              reflectPosition: -100,
                                              animationType: AnimationType.fadeIn,
                                              child: Wrap(
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
                                            ),
                                            const SizedBox(height: 20),
                                            Center(
                                              child: ScrollToReveal.withAnimation(
                                                label: 'Scroll4',
                                                scrollController: _controller,
                                                reflectPosition: -100,
                                                animationType:
                                                    AnimationType.findInLeft,
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const CreateScreen()));
                                                    },
                                                    style: TextButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.white,
                                                    ),
                                                    child: const Text(
                                                      "Get your app/website made!!",
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    )),
                                              ),
                                            ),
                                            SizedBox(height: 30),
                                          ],
                                        ),
                                      ),
                    
                    //our expertise section for mobile phones
                                      ExpertiseHanset(
                                          controller: _controller,
                                          tag1: '&^',
                                          tag2: "{}GHUGV",
                                          tag3: "uytuy%^^*^&",
                                          tag4: '%^%^*HJVHJ',
                                          tag5: 'OKOKM%^&*G*',
                                          tag6: '!@)UBHGG'),
                                      Column(
                                        children: [
                    //our services mobile phone
                                          const SizedBox(height: 30),
                                          ServicesHandset(),
                                          const SizedBox(height: 40),
                    //clientele mobile phone
                                          ClienteleHandset(),
                                          const SizedBox(height: 50),
                    //client feedback mobile phone
                                          FeedbackHandset(
                                              controller: _controller,
                                              tag1: '*/8956',
                                              tag2: 'OKOKOK',
                                              tag3: ':IJNHBGVFSGY'),
                                        ],
                                      ),
                    
                                     
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                    
                          //form
                          Center(
                                  child: FormHandset(controller: _controller, tag1: 'tag1'),
                                ),
                          //end of form
                          //footer
                        Footer(),
                        ],
                      ),
                    ),
                  ),
                  Sticky(controller: _controller),
                ],
              ),
              //),
            ),
          )
        : Scaffold(
            body: Stack(
              children: [
                Container(
                  color: Colors.orange,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 40, bottom: 40),
                        color: Colors.white,
                        height: 1000,
                        width: 1400,
                        child: WebSmoothScroll(
                          controller: _controller,
                          child: SingleChildScrollView(
                            //physics: NeverScrollableScrollPhysics(),
                            controller: _controller,
                            child: Column(
                              children: [
                                //start of nav bar
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, bottom: 20),
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
                                                    scheme: 'tel', path: _phone);
                                                if (await canLaunchUrl(url)) {
                                                  launchUrl(url);
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
                                      ],
                                    ),
                                  ),
                                ),
                                //end of nav bar
                                const SizedBox(height: 10),
                                Center(
                                    child: Text(
                                  "Our Services",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                )),
                                //start of para 1
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 300,
                                      width: 250,
                                      child: Center(
                                        child: Image.asset(
                                            'lib/assets/images/bird_logo.jpeg'),
                                      ),
                                    ),
                                    Container(
                                      height: 200,
                                      width: 450,
                                      child: Center(
                                        child: Material(
                                          //elevation: 1,
                                          shadowColor: Colors.orange,
                                          color: Colors.white,
                                          child: Text(
                                            "At Bluebird Software, we believe that every business, big or small, deserves a stunning online presence without breaking the bank. Our mission is simple: to provide high-quality websites and mobile apps with the most interactive and modern user interfaces at the most affordable rates.",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                //end of para 1
                                const SizedBox(height: 10),
                                //start of image 1
                                Container(
                                  height: 400,
                                  width: 1000,
                                  //color: Colors.black,
                                  child: Card(
                                      shadowColor: Colors.orange,
                                      elevation: 75,
                                      child: Image.network(
                                        "https://miro.medium.com/v2/0*ZlyYJF3Mq1peBv_A.png",
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                //end of image 1
                                const SizedBox(height: 50),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        height: 100,
                                        width: 200,
                                        child: Text(
                                          "From the founders",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        )),
                                    Container(
                                      height: 240,
                                      width: 450,
                                      child:
                                          //Center(child: Text("Our Services", style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),),),
                                          Center(
                                        child: Text(
                                          "As founders, we're passionate about providing businesses with top-tier digital solutions at prices that won't break the bank. With a focus on innovation and affordability, we're committed to delivering websites and mobile applications that elevate your brand without compromising quality. Join us on this journey, and let's soar together in the digital realm.",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          //services desktop                              
                               ServicesDesktop(),
                          //testimonial desktop
                                const SizedBox(height: 50),
                                TestimonialDesktop(),
                          //clientele desktop
                                SizedBox(height: 80),
                                ClienteleDesktop(),
                                const SizedBox(height: 50),
                          //feedback desktop
                                FeedbackDesktop(
                                    controller: _controller,
                                    tag1: 'sf1',
                                    tag2: 'sf2',
                                    tag3: 'sf3',
                                    tag4: 'sf4',
                                    tag5: 'sf5',
                                    tag6: 'sf6'),
                          
                                const SizedBox(height: 50),
                          //pricing cards desktop
                                //PricingCards(),
                          //form
                                FormDesktop(controller: _controller, tag1: 'ask1', tag2: 'ask2'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Sticky(controller: _controller)
              ],
            ),
          );
  }
}
