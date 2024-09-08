import 'package:bluebirdsoftware/screens/about_screen.dart';
import 'package:bluebirdsoftware/screens/contact_screen.dart';
import 'package:bluebirdsoftware/screens/home_screen.dart';
import 'package:bluebirdsoftware/screens/services_screen.dart';
import 'package:bluebirdsoftware/screens/why_screen.dart';
import 'package:bluebirdsoftware/widgets/brand.dart';
import 'package:bluebirdsoftware/widgets/desktop/clientele_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/expertise_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/feedback_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/footer_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/services_desktop.dart';
import 'package:bluebirdsoftware/widgets/desktop/testimonial_desktop.dart';
import 'package:bluebirdsoftware/widgets/footer.dart';
import 'package:bluebirdsoftware/widgets/handset/branding_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/clientele_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/expertise_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/feedback_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/services_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/testimonial_handset.dart';
import 'package:bluebirdsoftware/widgets/pricing_cards.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
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

  String valueChose = "Website";
  List list = [
    "Website",
    "App for both android and apple",
    "Both website and app",
    "App for android only",
    "App for apple only"
  ];
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

    var nameeditingcontroller = TextEditingController();
    var emaileditingcontroller = TextEditingController();
    var numbereditingcontroller = TextEditingController();
    var typeeditingcontroller = TextEditingController();
    var descriptioneditingcontroller = TextEditingController();

    var width = MediaQuery.of(context).size.width;
    String _phone = '+91 9032870624';

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
    }

    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: WebSmoothScroll(
          controller: _controller,
          child: SingleChildScrollView(
            controller: _controller,
            child: Column(
              children: [
                Container(
                  child: SingleChildScrollView(
                    //physics: NeverScrollableScrollPhysics(),
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
                                        Brand(),
                                        Row(
                                          children: [
                                            TextButton(
                                              onPressed: () async {
                                                await analytics.logEvent(
                                                    name: 'call');
                                                final url = Uri(
                                                    scheme: 'tel', path: _phone);
          
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
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                : BrandingHandset(),
                            width > 600
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Center(
                                        child: Container(
                                          margin: const EdgeInsets.all(20),
                                          padding: const EdgeInsets.all(25),
                                          height: 600,
                                          width: 600,
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
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
                                                  const Text(
                                                      "Select what you need"),
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
                                                  labelText:
                                                      'Please enter your name',
                                                ),
                                              ),
                                              TextFormField(
                                                controller:
                                                    emaileditingcontroller,
                                                autocorrect: false,
                                                decoration: const InputDecoration(
                                                  labelText:
                                                      'Please enter your email so we can contact you',
                                                ),
                                              ),
                                              TextFormField(
                                                controller:
                                                    numbereditingcontroller,
                                                autocorrect: false,
                                                decoration: const InputDecoration(
                                                  labelText:
                                                      'Please enter your phone numer so we can contact you',
                                                ),
                                              ),
                                              TextFormField(
                                                controller:
                                                    descriptioneditingcontroller,
                                                autocorrect: false,
                                                decoration: const InputDecoration(
                                                  labelText:
                                                      'Please enter what exactly your website or app is about in as many words as you want',
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: onsubmit,
                                                style: TextButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                ),
                                                child: const Text("Submit",
                                                    style: TextStyle(
                                                        color: Colors.black)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                          child: Image.asset(
                                              "lib/assets/images/bird_logo.jpeg",
                                              height: 420)),
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 150,
                                          width: 200,
                                          child: Text(
                                            "Grow your business with BlueBird Software today. Fill the form below to get a qouatation",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ),
                                      Center(
                                          child: Image.asset(
                                              "lib/assets/images/bird_logo.jpeg",
                                              height: 200)),
                                    ],
                                  ),
                            width < 600
                                ? Center(
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
                                  )
                                : Container(),
          
                            width > 600
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Center(
                                        child: Container(
                                          margin: const EdgeInsets.all(20),
                                          padding: const EdgeInsets.all(25),
                                          height: 600,
                                          width: 600,
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
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
                                                  const Text(
                                                      "Select what you need"),
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
                                                  labelText:
                                                      'Please enter your name',
                                                ),
                                              ),
                                              TextFormField(
                                                controller:
                                                    emaileditingcontroller,
                                                autocorrect: false,
                                                decoration: const InputDecoration(
                                                  labelText:
                                                      'Please enter your email so we can contact you',
                                                ),
                                              ),
                                              TextFormField(
                                                controller:
                                                    numbereditingcontroller,
                                                autocorrect: false,
                                                decoration: const InputDecoration(
                                                  labelText:
                                                      'Please enter your phone numer so we can contact you',
                                                ),
                                              ),
                                              TextFormField(
                                                controller:
                                                    descriptioneditingcontroller,
                                                autocorrect: false,
                                                decoration: const InputDecoration(
                                                  labelText:
                                                      'Please enter what exactly your website or app is about in as many words as you want',
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: onsubmit,
                                                style: TextButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                ),
                                                child: const Text("Submit",
                                                    style: TextStyle(
                                                        color: Colors.black)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                          child: Image.asset(
                                              "lib/assets/images/bird_logo.jpeg",
                                              height: 420)),
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 150,
                                          width: 200,
                                          child: Text(
                                            "Grow your business with BlueBird Software today. Fill the form below to get a qouatation",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ),
                                      Center(
                                          child: Image.asset(
                                              "lib/assets/images/bird_logo.jpeg",
                                              height: 200)),
                                    ],
                                  ),
                            width < 600
                                ? Center(
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
                                  )
                                : Container(),
          
                            width > 600
                                ?
                                //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~desktop~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                Column(
                                    children: [
          //extperise desktop
                                      ExpertiseCardDesktop(
                                          controller: _controller,
                                          tag1: 'create1',
                                          tag2: 'create2',
                                          tag3: 'create3',
                                          tag4: 'create4',
                                          tag5: 'create5',
                                          tag6: 'create6'),
                                      SizedBox(height: 50),
          //clientele
                                      ClienteleDesktop(),
                                      const SizedBox(height: 50),
          //client testimonial
                                      TestimonialDesktop(),
                                      const SizedBox(height: 50),
          //feedback
                                      FeedbackDesktop(
                                          controller: _controller,
                                          tag1: 'crt1',
                                          tag2: 'crt2',
                                          tag3: 'crt3',
                                          tag4: 'home)',
                                          tag5: 'home(',
                                          tag6: 'home~'),
                                      const SizedBox(height: 50),
          //services
                                      ServicesDesktop(),
                                      const SizedBox(height: 20),
          //pricing cards
                                      //PricingCards(),
                                    ],
                                  )
                                :
          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~mobile phones~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                Column(
                                    children: [
          //our expertise mobile phones
                                      ExpertiseHanset(
                                          controller: _controller,
                                          tag1: 'create1',
                                          tag2: 'create2',
                                          tag3: 'create3',
                                          tag4: 'create4',
                                          tag5: 'create5',
                                          tag6: 'create6'),
                                      const SizedBox(height: 20),
          //pricing mobile phones
                                      //PricingCards(),
          //clientele mobile phones
                                      ClienteleHandset(),
          //client testimonial mobile phones
                                      const SizedBox(height: 20),
                                      TestimonialHandset(),
                                      const SizedBox(height: 50),
          //client feedback mobile phone
                                      FeedbackHandset(
                                          controller: _controller,
                                          tag1: 'c!',
                                          tag2: 'c@',
                                          tag3: 'c#'),
          //our services mobile phone
                                      const SizedBox(height: 30),
                                      ServicesHandset(),
                                      const SizedBox(height: 40),
                                    ],
                                  ),
          //footer
                            width>600 ? FooterDesktop(): Footer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
