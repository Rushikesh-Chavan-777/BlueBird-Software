import 'package:bluebirdsoftware/screens/about_screen.dart';
import 'package:bluebirdsoftware/screens/contact_screen.dart';
import 'package:bluebirdsoftware/screens/create_screen.dart';
import 'package:bluebirdsoftware/screens/home_screen.dart';
import 'package:bluebirdsoftware/screens/services_screen.dart';
import 'package:bluebirdsoftware/widgets/brand_footer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterDesktop extends StatefulWidget {
  const FooterDesktop({super.key});

  @override
  State<FooterDesktop> createState() => _FooterDesktopState();
}

class _FooterDesktopState extends State<FooterDesktop> {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  //variables
  final websiteUri_insta =
      Uri.parse('https://www.instagram.com/bluebird_software_/');
  final websiteUri_facebook = Uri.parse('https://www.bluebirdsoftware.in/');
  final websiteUri_linkedin = Uri.parse('https://www.linkedin.com/in/blue-bird-software-4a4531308/');
  final websiteUri_twitter = Uri.parse('https://twitter.com/BlueBird_Softw_');
  String _phone = '+91 9032870624';
  final Uri whatsapp = Uri.parse(
      'https://wa.me/+91 9032870624?text=Hi. I am coming from your website.');

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Container(
        width: double.infinity,
        height: 500,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //about us
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About us",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 60,
                        width: 400,
                        child: Wrap(
                          children: [
                            Text(
                              "Welcome to BlueBird Software, where we're committed to revolutionizing the digital landscape with affordable, top-quality solutions. From innovative websites to seamless mobile apps, we're your trusted partner in bringing your vision to life. Join us as we help businesses soar to new heights.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //contact us links
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 100),
                      Text(
                        "Reach Us",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Link(
                            uri: websiteUri_twitter,
                            target: LinkTarget.defaultTarget,
                            builder: (content, openLink) => TextButton(
                              onPressed: openLink,
                              child: Row(
                                children: [
                                  Image.network(
                                      'https://upload.wikimedia.org/wikipedia/commons/9/95/Twitter_new_X_logo.png',
                                      height: 20,
                                      width: 20),
                                  Text(' Twitter',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Link(
                            uri: websiteUri_linkedin,
                            target: LinkTarget.defaultTarget,
                            builder: (content, openLink) => TextButton(
                              onPressed: openLink,
                              child: Row(
                                children: [
                                  Image.asset(
                                      'lib/assets/images/linkedin.png',
                                      height: 20,
                                      width: 20),
                                  Text(' LinkedIn',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Link(
                            uri: websiteUri_facebook,
                            target: LinkTarget.defaultTarget,
                            builder: (content, openLink) => TextButton(
                              onPressed: openLink,
                              child: Row(
                                children: [
                                  Image.network(
                                      'https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Facebook_f_logo_%282021%29.svg/2048px-Facebook_f_logo_%282021%29.svg.png',
                                      height: 20,
                                      width: 20),
                                  Text(' Facebook',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),*/
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Link(
                            uri: websiteUri_insta,
                            //target: LinkTarget.defaultTarget,
                            builder: (content, openLink) => TextButton(
                              onPressed: openLink,
                              child: Row(
                                children: [
                                  Image.network(
                                      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/2048px-Instagram_logo_2016.svg.png',
                                      height: 20,
                                      width: 20),
                                  Text('  Instagram',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          TextButton(
                            onPressed: () async {
                              final url = Uri(scheme: 'tel', path: _phone);
                              await analytics.logEvent(name: 'call');
                              if (!await launchUrl(url)) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Text(
                              "+91 9032870624",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () async {
                          Uri uro = Uri.parse(
                              'mailto:bluebirdsoftwarefcn777@gmail.com?subject=Rgarding enquiry for new website/app&body=Hi, I need a website/app for my enterprise. Lets connect for a meeting soon!');
                          if (!await launchUrl(uro)) {
                            throw Exception('Could not launch $uro');
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                            ),
                            Text(" bluebirdsoftwarefcn777@gmail.com",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      // Add more SocialIcon widgets for additional social media platforms
                    ],
                  ),
//useful links
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 100),
                      Text(
                        "Useful Links",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                          },
                          child: Text(
                            "Home",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ServicesScreen(),
                            ));
                          },
                          child: Text(
                            "Services",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ContactSCreen(),
                            ));
                          },
                          child: Text(
                            "Contact",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AboutScreen(),
                            ));
                          },
                          child: Text(
                            "About",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CreateScreen(),
                            ));
                          },
                          child: Text(
                            "Get App/Website",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BrandFooter(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.copyright_outlined,
                        color: Colors.white,
                      ),
                      Text("All rights reserved",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
