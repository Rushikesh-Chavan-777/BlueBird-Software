import 'package:bluebirdsoftware/popover.dart';
import 'package:bluebirdsoftware/screens/about_screen.dart';
import 'package:bluebirdsoftware/screens/create_screen.dart';
import 'package:bluebirdsoftware/screens/home_screen.dart';
import 'package:bluebirdsoftware/screens/services_screen.dart';
import 'package:bluebirdsoftware/screens/why_screen.dart';
import 'package:bluebirdsoftware/widgets/brand.dart';
import 'package:bluebirdsoftware/widgets/desktop/footer_desktop.dart';
import 'package:bluebirdsoftware/widgets/footer.dart';
import 'package:bluebirdsoftware/widgets/handset/branding_handset.dart';
import 'package:bluebirdsoftware/widgets/handset/expertise_handset.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:reveal_on_scroll/reveal_on_scroll.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class ContactSCreen extends StatefulWidget {
  const ContactSCreen({super.key});

  @override
  State<ContactSCreen> createState() => _ContactSCreenState();
}

class _ContactSCreenState extends State<ContactSCreen> {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  //the animation controller
  var _controller1; //Scrollcntroller _controller = ScrollController();
  @override
  void initState() {
    super.initState();
    _controller1 = ScrollController();
    analytics.setAnalyticsCollectionEnabled(true);
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
  final Uri whatsapp = Uri.parse(
      'https://wa.me/9032870624?text=Hi. I am coming from your website.');

  //variables
  final websiteUri_insta =
      Uri.parse('https://www.instagram.com/bluebird_software_/');
  final websiteUri_facebook = Uri.parse('https://www.bluebirdsoftware.in/');
  final websiteUri_twitter = Uri.parse('https://twitter.com/BlueBird_Softw_');
  //print(width); = 140 for full chrome && 1200 for minimised chrome
  //print("Rushkesh");
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

    var width = MediaQuery.of(context).size.width;

    final websiteUri = Uri.parse('https://www.bluebirdsoftware.in/');
    final gmail = Uri.parse('https://www.google.com/gmail/about/');
    String _phone = '+91 9032870624';

//build
    return width > 600
        ? Container(
            //padding: EdgeInsets.all(100),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: WebSmoothScroll(
                controller: _controller1,
                child: SingleChildScrollView(
                  //physics: NeverScrollableScrollPhysics(),
                  controller: _controller1,
                  child: Column(
                    children: [
                      Container(
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
                                                      child: const Text(
                                                          "Services",
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
                                      : Padding(
                                          padding: const EdgeInsets.only(
                                              top: 40.0, bottom: 20),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SizedBox(width: 15),
                                                  CircleAvatar(
                                                    foregroundImage: NetworkImage(
                                                        'https://www.shutterstock.com/image-illustration/cute-blue-bird-sunglasses-cartoon-260nw-304335974.jpg'),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Center(
                                                    child: Text(
                                                      "BlueBird Software",
                                                      style: TextStyle(
                                                          /*fontWeight: FontWeight.w900*/ fontSize:
                                                              25),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Popover(),
                                            ],
                                          ),
                                        ),
                                  Container(
                                    color: Colors.blue,
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 30),
                                        Text(
                                          "Contact Us",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 35),
                                        ),
                                        Divider(
                                          indent: 200,
                                          endIndent: 200,
                                          thickness: 5,
                                          color: Colors.white,
                                        ),
                                        const SizedBox(height: 60),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Center(
                                              child: Container(
                                                margin: const EdgeInsets.all(20),
                                                padding: const EdgeInsets.all(25),
                                                height: 500,
                                                width: 600,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(10)),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Text(
                                                          "Enquire Now",
                                                          style: TextStyle(
                                                              color: Colors.white,
                                                              fontWeight:
                                                                  FontWeight.bold,
                                                              fontSize: 30),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Select what you need",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        const SizedBox(
                                                          width: 8,
                                                        ),
                                                        DropdownButton(
                                                          hint: const Text(
                                                            "Select what you want. Website/app/both?",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.black),
                                                          ),
                                                          value: valueChose,
                                                          onChanged: (newValue) {
                                                            setState(() {
                                                              valueChose =
                                                                  newValue
                                                                      .toString();
                                                            });
                                                          },
                                                          items: list
                                                              .map((valueItem) {
                                                            return DropdownMenuItem(
                                                                value: valueItem,
                                                                child: Text(
                                                                    valueItem));
                                                          }).toList(),
                                                        ),
                                                      ],
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          nameeditingcontroller,
                                                      autocorrect: false,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                      decoration:
                                                          const InputDecoration(
                                                        floatingLabelStyle:
                                                            TextStyle(
                                                                color:
                                                                    Colors.white),
                                                        labelText: 'Name',
                                                        labelStyle: TextStyle(
                                                            color: Colors.white),
                                                        fillColor: Colors.white,
                                                      ),
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          emaileditingcontroller,
                                                      autocorrect: false,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText: 'Email',
                                                        fillColor: Colors.white,
                                                        labelStyle: TextStyle(
                                                            color: Colors.white),
                                                      ),
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          numbereditingcontroller,
                                                      autocorrect: false,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText: 'Phone',
                                                        fillColor: Colors.white,
                                                        labelStyle: TextStyle(
                                                            color: Colors.white),
                                                      ),
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          descriptioneditingcontroller,
                                                      autocorrect: false,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText:
                                                            'Website Description',
                                                        fillColor: Colors.white,
                                                        labelStyle: TextStyle(
                                                            color: Colors.white),
                                                      ),
                                                    ),
                                                    TextButton(
                                                      onPressed: onsubmit,
                                                      style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.red,
                                                      ),
                                                      child: const Text("Submit",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                //links to all(desktop)
                                            Center(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Image.network(
                                                      'https://cdni.iconscout.com/illustration/premium/thumb/software-development-3669332-3073742.png?f=webp',
                                                      height: 400,
                                                      width: 400),
                                                  //container for website
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.web_outlined,
                                                          color: Colors.red,
                                                          size: 50,
                                                        ),
                                                        const SizedBox(
                                                          width: 20,
                                                        ),
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              " Our Website",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 30),
                                                            ),
                                                            Link(
                                                              uri: websiteUri,
                                                              target: LinkTarget
                                                                  .defaultTarget,
                                                              builder: (content,
                                                                      openLink) =>
                                                                  TextButton(
                                                                      onPressed:
                                                                          openLink,
                                                                      child: Text(
                                                                        websiteUri
                                                                            .toString(),
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                20,
                                                                            color:
                                                                                Colors.white),
                                                                      )),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                
                                                  const SizedBox(height: 20),
                //container for call
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.phone,
                                                          color: Colors.yellow,
                                                          size: 50,
                                                        ),
                                                        const SizedBox(
                                                          width: 20,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              " Call us",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 30),
                                                            ),
                                                            TextButton(
                                                              onPressed:
                                                                  () async {
                                                                final url = Uri(
                                                                    scheme: 'tel',
                                                                    path: _phone);
                                                                if (await canLaunchUrl(
                                                                    url)) {
                                                                  launchUrl(url);
                                                                }
                                                              },
                                                              child: Text(
                                                                "Click to call(+91 9032870624)",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize: 20,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 20),
                //container for email
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.email_outlined,
                                                          color:
                                                              Colors.greenAccent,
                                                          size: 50,
                                                        ),
                                                        const SizedBox(width: 20),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              " Email us",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 30),
                                                            ),
                                                            TextButton(
                                                                onPressed:
                                                                    () async {
                                                                  Uri uro = Uri.parse(
                                                                      'mailto:bluebirdsoftwarefcn777@gmail.com?subject=Rgarding enquiry for new website/app&body=Hi, I need a website/app for my enterprise. Lets connect for a meeting soon!');
                                                                  if (!await launchUrl(
                                                                      uro)) {
                                                                    throw Exception(
                                                                        'Could not launch $uro');
                                                                  }
                                                                },
                                                                child: Text(
                                                                    'bluebirdsoftwarefcn777@gmail.com',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            20,
                                                                        color: Colors
                                                                            .white))),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 20),
                //container for email
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Image.network(
                                                            'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/2044px-WhatsApp.svg.png',
                                                            height: 60,
                                                            width: 60),
                                                        const SizedBox(width: 20),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "Whatsapp us",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 30),
                                                            ),
                                                            GestureDetector(
                                                                onTap: () {
                                                                  launchUrl(
                                                                      whatsapp);
                                                                },
                                                                child: Text(
                                                                  "Click +91 9032870624",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ))
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 20),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
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
                                              const SizedBox(height: 30),
                                              ScrollToReveal.withAnimation(
                                                label: 'a1',
                                                scrollController: _controller1,
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
                                                label: 'a2',
                                                scrollController: _controller1,
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
                                                label: 'a3',
                                                scrollController: _controller1,
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
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 40),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 100),
                                  //start of create part
                                  Center(
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
                
                                  //end of create part
                                  const SizedBox(height: 95),
                
                //start of footer
                                  width>600 ? FooterDesktop(): Footer(),
                                  //end of footer
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
          )
        : Scaffold(
            body: Container(
              child: WebSmoothScroll(
                controller: _controller1,
                child: SingleChildScrollView(
                  //physics: NeverScrollableScrollPhysics(),
                  controller: _controller1,
                  child: Column(
                    children: [
                      //the nav bar for mobile phone
                      BrandingHandset(),
                      //const SizedBox(height: 20),
                
                      //the blue solid edge body
                      Container(
                        color: Colors.blue,
                        height: 760,
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            top: 55, right: 15, left: 15, bottom: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 200,
                                  width: 161,
                                  child: Text(
                                    "Contact our customer support anytime. We would be happy to hear from you",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Colors.white),
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
                                    height: 200,
                                    width: 200),
                              ],
                            ),
                            SizedBox(height: 10),
                //links to all(mobile phone)
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //container for website
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.web_outlined,
                                          color: Colors.red,
                                          size: 50,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              " Our Website",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30),
                                            ),
                                            Link(
                                              uri: websiteUri,
                                              target: LinkTarget.defaultTarget,
                                              builder: (content, openLink) =>
                                                  TextButton(
                                                      onPressed: openLink,
                                                      child: Text(
                                                        websiteUri.toString(),
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.white),
                                                      )),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                
                                  const SizedBox(height: 20),
                                  //container for call
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.phone,
                                          color: Colors.yellow,
                                          size: 50,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              " Call us",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30),
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                final url = Uri(
                                                    scheme: 'tel', path: _phone);
                                                if (await canLaunchUrl(url)) {
                                                  launchUrl(url);
                                                }
                                              },
                                              child: Text(
                                                "Click to call(+91 9032870624)",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  //container for email
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.email_outlined,
                                          color: Colors.greenAccent,
                                          size: 50,
                                        ),
                                        const SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              " Email us",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30),
                                            ),
                                            TextButton(
                                                onPressed: () async {
                                                  Uri uro = Uri.parse(
                                                      'mailto:bluebirdsoftwarefcn777@gmail.com?subject=Rgarding enquiry for new website/app&body=Hi, I need a website/app for my enterprise. Lets connect for a meeting soon!');
                                                  if (!await launchUrl(uro)) {
                                                    throw Exception(
                                                        'Could not launch $uro');
                                                  }
                                                },
                                                child: Text(
                                                    'bluebirdsoftwarefcn777@gmail.com',
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        color: Colors.white))),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  //container for email
                                  Container(
                                    child: Row(
                                      children: [
                                        Image.network(
                                            'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/2044px-WhatsApp.svg.png',
                                            height: 60,
                                            width: 60),
                                        const SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Whatsapp us",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30),
                                            ),
                                            GestureDetector(
                                                onTap: () {
                                                  launchUrl(whatsapp);
                                                },
                                                child: Text(
                                                  "Click +91 9032870624",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                
                      SizedBox(height: 20),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          padding: const EdgeInsets.all(25),
                          height: 600,
                          width: 600,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                        valueChose = newValue.toString();
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
                                controller: descriptioneditingcontroller,
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
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                //our expertise section for mobile phones
                      Column(
                        children: [
                          ExpertiseHanset(
                              controller: _controller1,
                              tag1: 'con1',
                              tag2: 'con2',
                              tag3: 'con3',
                              tag4: 'con4',
                              tag5: 'con5',
                              tag6: 'con6'),
                        ],
                      ),
                      //end of our expertize
                      const SizedBox(height: 20),
                      //footer
                      width > 600 ? FooterDesktop(): Footer(),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
