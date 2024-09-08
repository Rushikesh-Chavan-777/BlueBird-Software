import 'package:bluebirdsoftware/screens/contact_screen.dart';
import 'package:bluebirdsoftware/screens/create_screen.dart';
import 'package:bluebirdsoftware/screens/home_screen.dart';
import 'package:bluebirdsoftware/widgets/brand.dart';
import 'package:bluebirdsoftware/widgets/desktop/footer_desktop.dart';
import 'package:bluebirdsoftware/widgets/footer.dart';
import 'package:bluebirdsoftware/widgets/handset/branding_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/expertise_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/form_handset.dart';
import 'package:bluebirdsoftware/widgets/sticky.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:reveal_on_scroll/reveal_on_scroll.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class WhyScreen extends StatefulWidget {
  const WhyScreen({super.key});

  @override
  State<WhyScreen> createState() => _WhyScreenState();
}

class _WhyScreenState extends State<WhyScreen> {
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

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
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
    return width > 600
        ?
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~desktop~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white, // HexColor('330044'),
              ),
              Center(
                child: Card(
                  elevation: 100,
                  shadowColor: Colors.white,
                  color: Colors.lightBlue, //HexColor('1A001A'),
                  child: Container(
                    height: 700,
                    width: 1200,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(100),
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  body: WebSmoothScroll(
                    controller: _controller,
                    child: SingleChildScrollView(
                      //physics: NeverScrollableScrollPhysics(),
                      controller: _controller,
                      child: Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(right: 60, left: 60, bottom: 60),
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
                                                          await analytics
                                                              .logEvent(
                                                                  name: 'call');
                                                          final url = Uri(
                                                              scheme: 'tel',
                                                              path: _phone);
                                                          if (!await launchUrl(
                                                              url)) {
                                                            throw Exception(
                                                                'Could not launch $url');
                                                          }
                                                        },
                                                        child: Text(
                                                          "Call (+91) 9032870624",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight.w500,
                                                              color:
                                                                  Colors.white70,
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
                                                                    builder:
                                                                        (context) =>
                                                                            const HomeScreen()));
                                                          },
                                                          child: const Text(
                                                              "Home",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white70,
                                                                fontSize:
                                                                    20, /*fontWeight: FontWeight.w600*/
                                                              ))),
                                                      TextButton(
                                                          onPressed: () {
                                                            Navigator.of(context).push(
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const ContactSCreen()));
                                                          },
                                                          child: const Text(
                                                              "Contact",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white70,
                                                                fontSize:
                                                                    20, /*fontWeight: FontWeight.w600*/
                                                              ))),
                                                      TextButton(
                                                          onPressed: () {
                                                            Navigator.of(context).push(
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const CreateScreen()));
                                                          },
                                                          child: const Text(
                                                              "Create",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white70,
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
                                                                    builder:
                                                                        (context) =>
                                                                            const CreateScreen()));
                                                          },
                                                          style: TextButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                HexColor(
                                                                    '#FF2C21'),
                                                          ),
                                                          child: const Text(
                                                            "Get your app/website made!!",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.white),
                                                          )),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          : BrandingHandset(),
                                      const SizedBox(height: 30),
                    
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Center(
                                            child: SizedBox(
                                              height: 250,
                                              width: 450,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Why choose Bluebird Software. What makes us stand out from the rest ?",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 35),
                                                  ),
                                                  SizedBox(height: 25),
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context).push(
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    const CreateScreen()));
                                                      },
                                                      style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            HexColor('#FF2C21'),
                                                      ),
                                                      child: const Text(
                                                        "Get your app/website made!!",
                                                        style: TextStyle(
                                                            color: Colors.white),
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SvgPicture.network(
                                            'https://cdni.iconscout.com/illustration/premium/thumb/software-development-3669332-3073742.png?f=webp',
                                            height: 20.0,
                                            width: 20.0,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                          Image.network(
                                              'https://cdni.iconscout.com/illustration/premium/thumb/software-development-3669332-3073742.png?f=webp',
                                              height: 400,
                                              width: 400),
                                        ],
                                      ),
                                      const SizedBox(height: 30),
                    
                                      //Rich text 1
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 10),
                                          RichText(
                                            text: TextSpan(
                                              style: const TextStyle(
                                                fontSize: 25.0,
                                                color: Colors.black,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Affordable Rates:',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text:
                                                        'We understand the importance of cost-effectiveness for businesses. That is why we offer our services at the most competitive rates in the market without compromising on quality.',
                                                    style: const TextStyle(
                                                        color: Colors.white70,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 50),
                                          ScrollToReveal.withAnimation(
                                            label: 'Scroll11',
                                            scrollController: _controller,
                                            reflectPosition: -100,
                                            animationType:
                                                AnimationType.fadeInDown,
                                            child: RichText(
                                              text: TextSpan(
                                                style: const TextStyle(
                                                  fontSize: 25.0,
                                                  color: Colors.black,
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text:
                                                          'Fastest Turnaround Time: ',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  TextSpan(
                                                      text:
                                                          "We value our customers' time above all else. With our streamlined development process and efficient project management, we aim to deliver our services in the fastest time possible without compromising on quality. Whether you need a website or mobile app developed urgently, you can count on us to meet your deadlines with precision and professionalism.",
                                                      style: const TextStyle(
                                                          color: Colors.white70,
                                                          fontWeight:
                                                              FontWeight.normal)),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 50),
                                          //Rich text 2
                                          ScrollToReveal.withAnimation(
                                            label: 'why1',
                                            scrollController: _controller,
                                            reflectPosition: -100,
                                            animationType:
                                                AnimationType.fadeInDown,
                                            child: RichText(
                                              text: TextSpan(
                                                // Note: Styles for TextSpans must be explicitly defined.
                                                // Child text spans will inherit styles from parent
                                                style: const TextStyle(
                                                  fontSize: 25.0,
                                                  color: Colors.black,
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text:
                                                          'Interactive and Modern User Interfaces:',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  TextSpan(
                                                      text:
                                                          "In today's digital age, user experience is paramount. Our expert designers ensure that your website or mobile app not only looks visually appealing but also provides a seamless and intuitive user experience that keeps your visitors engaged.",
                                                      style: const TextStyle(
                                                          color: Colors.white70,
                                                          fontWeight:
                                                              FontWeight.normal)),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 50),
                                          //Rich text 3
                                          ScrollToReveal.withAnimation(
                                            label: 'Scroll33',
                                            scrollController: _controller,
                                            reflectPosition: -100,
                                            animationType:
                                                AnimationType.fadeInDown,
                                            child: RichText(
                                              text: TextSpan(
                                                // Note: Styles for TextSpans must be explicitly defined.
                                                // Child text spans will inherit styles from parent
                                                style: const TextStyle(
                                                  fontSize: 25.0,
                                                  color: Colors.black,
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'Tailored Solutions:',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  TextSpan(
                                                      text:
                                                          "We don't believe in one-size-fits-all solutions. Each project is unique, and we take the time to understand your specific requirements and goals to deliver customized solutions that perfectly align with your vision.",
                                                      style: const TextStyle(
                                                          color: Colors.white70,
                                                          fontWeight:
                                                              FontWeight.normal)),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 50),
                                          //Rich text 4
                                          ScrollToReveal.withAnimation(
                                            label: 'Scroll55',
                                            scrollController: _controller,
                                            reflectPosition: -100,
                                            animationType:
                                                AnimationType.fadeInDown,
                                            child: RichText(
                                              text: TextSpan(
                                                // Note: Styles for TextSpans must be explicitly defined.
                                                // Child text spans will inherit styles from parent
                                                style: const TextStyle(
                                                  fontSize: 25.0,
                                                  color: Colors.black,
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text:
                                                          'Customer Satisfaction Guaranteed:',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  TextSpan(
                                                      text:
                                                          'At Bluebird Software, customer satisfaction is our top priority. We value your time and strive to deliver projects on time, every time. Our efficient project management processes ensure that your project stays on track without any unnecessary delays.',
                                                      style: const TextStyle(
                                                          color: Colors.white70,
                                                          fontWeight:
                                                              FontWeight.normal)),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 50),
                                          //Rich text 5
                                          ScrollToReveal.withAnimation(
                                            label: 'Scroll6',
                                            scrollController: _controller,
                                            reflectPosition: -100,
                                            animationType:
                                                AnimationType.fadeInDown,
                                            child: RichText(
                                              text: TextSpan(
                                                // Note: Styles for TextSpans must be explicitly defined.
                                                // Child text spans will inherit styles from parent
                                                style: const TextStyle(
                                                  fontSize: 25.0,
                                                  color: Colors.black,
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text:
                                                          'Transparent Communication:',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  TextSpan(
                                                      text:
                                                          'We believe in transparency and open communication throughout the project lifecycle. From the initial consultation to the final delivery, we keep you informed every step of the way, ensuring that your feedback is incorporated into the final product.',
                                                      style: const TextStyle(
                                                          color: Colors.white70,
                                                          fontWeight:
                                                              FontWeight.normal)),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 50),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            //),
                          ),
                          //footer
                          //footer
                        ],
                      ),
                    ),
                  ),
                  //),
                ),
              ),
              Sticky(controller: _controller),
            ],
          )
        :
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~mobile phones~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        Scaffold(
            body: Container(
              child: Stack(
                children: [
                  WebSmoothScroll(
                    controller: _controller,
                    child: SingleChildScrollView(
                      //physics: NeverScrollableScrollPhysics(),
                      controller: _controller,
                      child: Column(
                        children: [
                          //the navbar
                          BrandingHandset(),
                          //end of nav bar
                    //star of the solid blue container
                          Container(
                            //height: 1000,
                            width: double.infinity,
                            color: Colors.blue,
                            child: Column(
                              children: [
                                const SizedBox(height: 20),
                                Text(
                                  "Why chose BlueBird Software ?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 20),
                                Divider(
                                    color: Colors.white,
                                    indent: 30,
                                    endIndent: 30),
                    
                                //start of why bullet points
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Center(
                                    child: //Rich text 1
                                        Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 10),
                                        RichText(
                                          text: TextSpan(
                                            // Note: Styles for TextSpans must be explicitly defined.
                                            // Child text spans will inherit styles from parent
                                            style: const TextStyle(
                                              fontSize: 25.0,
                                              color: Colors.black,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Affordable Rates:',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                  text:
                                                      'We understand the importance of cost-effectiveness for businesses. That is why we offer our services at the most competitive rates in the market without compromising on quality.',
                                                  style: const TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.normal)),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 50),
                                        RichText(
                                          text: TextSpan(
                                            // Note: Styles for TextSpans must be explicitly defined.
                                            // Child text spans will inherit styles from parent
                                            style: const TextStyle(
                                              fontSize: 25.0,
                                              color: Colors.black,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                      'Fastest Turnaround Time: ',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                  text:
                                                      "We value our customers' time above all else. With our streamlined development process and efficient project management, we aim to deliver our services in the fastest time possible without compromising on quality. Whether you need a website or mobile app developed urgently, you can count on us to meet your deadlines with precision and professionalism.",
                                                  style: const TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight:
                                                          FontWeight.normal)),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 50),
                                        //Rich text 2
                                        ScrollToReveal.withAnimation(
                                          label: 'why2',
                                          scrollController: _controller,
                                          reflectPosition: -100,
                                          animationType: AnimationType.fadeInDown,
                                          child: RichText(
                                            text: TextSpan(
                                              // Note: Styles for TextSpans must be explicitly defined.
                                              // Child text spans will inherit styles from parent
                                              style: const TextStyle(
                                                fontSize: 25.0,
                                                color: Colors.black,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        'Interactive and Modern User Interfaces:',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text:
                                                        "In today's digital age, user experience is paramount. Our expert designers ensure that your website or mobile app not only looks visually appealing but also provides a seamless and intuitive user experience that keeps your visitors engaged.",
                                                    style: const TextStyle(
                                                        color: Colors.white70,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 50),
                                        //Rich text 3
                                        ScrollToReveal.withAnimation(
                                          label: 'Scroll33',
                                          scrollController: _controller,
                                          reflectPosition: -100,
                                          animationType: AnimationType.fadeInDown,
                                          child: RichText(
                                            text: TextSpan(
                                              // Note: Styles for TextSpans must be explicitly defined.
                                              // Child text spans will inherit styles from parent
                                              style: const TextStyle(
                                                fontSize: 25.0,
                                                color: Colors.black,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Tailored Solutions:',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text:
                                                        "We don't believe in one-size-fits-all solutions. Each project is unique, and we take the time to understand your specific requirements and goals to deliver customized solutions that perfectly align with your vision.",
                                                    style: const TextStyle(
                                                        color: Colors.white70,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 50),
                                        //Rich text 4
                                        ScrollToReveal.withAnimation(
                                          label: 'Scroll43',
                                          scrollController: _controller,
                                          reflectPosition: -100,
                                          animationType: AnimationType.fadeInDown,
                                          child: RichText(
                                            text: TextSpan(
                                              // Note: Styles for TextSpans must be explicitly defined.
                                              // Child text spans will inherit styles from parent
                                              style: const TextStyle(
                                                fontSize: 25.0,
                                                color: Colors.black,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        'Customer Satisfaction Guaranteed:',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text:
                                                        'At Bluebird Software, customer satisfaction is our top priority. We value your time and strive to deliver projects on time, every time. Our efficient project management processes ensure that your project stays on track without any unnecessary delays.',
                                                    style: const TextStyle(
                                                        color: Colors.white70,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 50),
                                        //Rich text 5
                                        ScrollToReveal.withAnimation(
                                          label: 'Scroll44',
                                          scrollController: _controller,
                                          reflectPosition: -100,
                                          animationType: AnimationType.fadeInDown,
                                          child: RichText(
                                            text: TextSpan(
                                              // Note: Styles for TextSpans must be explicitly defined.
                                              // Child text spans will inherit styles from parent
                                              style: const TextStyle(
                                                fontSize: 25.0,
                                                color: Colors.black,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        'Transparent Communication:',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text:
                                                        'We believe in transparency and open communication throughout the project lifecycle. From the initial consultation to the final delivery, we keep you informed every step of the way, ensuring that your feedback is incorporated into the final product.',
                                                    style: const TextStyle(
                                                        color: Colors.white70,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 50),
                                      ],
                                    ),
                                  ),
                                ),
                                //end of why bullet points
                              ],
                            ),
                          ),
                          //end of the solid blue container
                    
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ScrollToReveal.withAnimation(
                                label: 'Scroll45',
                                scrollController: _controller,
                                reflectPosition: -100,
                                animationType: AnimationType.findInRight,
                                child: Center(
                                  child: Container(
                                      height: 150,
                                      width: 200,
                                      child: Text(
                                        "Grow your business with BlueBird Software today. Fill the form below to get a qouatation",
                                        style: TextStyle(fontSize: 20),
                                      )),
                                ),
                              ),
                              ScrollToReveal.withAnimation(
                                label: 'Scroll46',
                                scrollController: _controller,
                                reflectPosition: -100,
                                animationType: AnimationType.fadeInDown,
                                child: Center(
                                    child: Image.asset(
                                        "lib/assets/images/bird_logo.jpeg",
                                        height: 150)),
                              ),
                            ],
                          ),
                          Center(
                            child: FormHandset(
                                controller: _controller, tag1: 'tag2'),
                          ),
                    
                    //expertise mobile phones
                          ExpertiseHanset(
                              controller: _controller,
                              tag1: 'w1',
                              tag2: 'w2',
                              tag3: 'w3',
                              tag4: 'w4',
                              tag5: 'w5',
                              tag6: 'w6'),
                          const SizedBox(height: 20),
                    
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
