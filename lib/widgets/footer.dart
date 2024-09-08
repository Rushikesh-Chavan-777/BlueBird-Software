import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  //variables
  final websiteUri_insta =
      Uri.parse('https://www.instagram.com/bluebird_software_/');
  final websiteUri_facebook = Uri.parse('https://www.bluebirdsoftware.in/');
  final websiteUri_linkedin =
      Uri.parse('https://www.linkedin.com/in/blue-bird-software-4a4531308/');
  final websiteUri_twitter = Uri.parse('https://twitter.com/BlueBird_Softw_');
  String _phone = '9032870624';
  final Uri whatsapp = Uri.parse(
      'https://wa.me/9032870624?text=Hi. I am coming from your website.');
  @override
  Widget build(BuildContext context) {
    return //footer
        Container(
      width: double.infinity,
      color: Colors.black,
      child: Container(
        width: double.infinity,
        height: 270,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BlueBird Software",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Link(
                    uri: websiteUri_linkedin,
                    target: LinkTarget.defaultTarget,
                    builder: (content, openLink) => TextButton(
                      onPressed: openLink,
                      child: Row(
                        children: [
                          Image.asset('lib/assets/images/linkedin.png',
                              height: 20, width: 20),
                          Text(' LinkedIn',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              /*Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                mainAxisAlignment: MainAxisAlignment.center,
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
              Divider(
                endIndent: 20,
                indent: 10,
                color: Colors.white,
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  TextButton(
                    onPressed: () async {
                      final url = Uri(scheme: 'tel', path: _phone);
                      //if (await canLaunchUrl(url)) {
                      //  await launchUrl(url);
                      //}
                      await analytics.logEvent(name: 'call');
                      if (!await launchUrl(url)) {
                        throw Exception('Could not launch $url');
                      }
                    },
                    child: Text(
                      " +91 9032870624",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.white),
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
        ),
      ),
    );
  }
}
