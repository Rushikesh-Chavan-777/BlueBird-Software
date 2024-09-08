import 'package:bluebirdsoftware/screens/about_screen.dart';
import 'package:bluebirdsoftware/screens/contact_screen.dart';
import 'package:bluebirdsoftware/screens/create_screen.dart';
import 'package:bluebirdsoftware/screens/services_screen.dart';
import 'package:bluebirdsoftware/screens/why_screen.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:url_launcher/url_launcher.dart';

class Popover extends StatefulWidget {
  const Popover({super.key});

  @override
  State<Popover> createState() => _PopoverState();
}

class _PopoverState extends State<Popover> {

      final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
      @override
  void initState() {
    analytics.setAnalyticsCollectionEnabled(true);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
//variables
    final websiteUri_insta = Uri.parse('https://www.bluebirdsoftware.in/');
    final websiteUri_facebook = Uri.parse('https://www.bluebirdsoftware.in/');
    final websiteUri_twitter = Uri.parse('https://www.bluebirdsoftware.in/');
    var width = MediaQuery.of(context).size.width;
    String _phone = '+91 9032870624';
    return DrawerButton(
      onPressed: () => showPopover(
        width: 250,
        height: 300,
        context: context,
        bodyBuilder: (context) => Column(
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () async {
                    await analytics.logEvent(name: 'call');
                    final url = Uri(scheme: 'tel', path: _phone);
                    //if (await canLaunchUrl(url)) {
                    //await launchUrl(url);
                    //}
                    if (!await launchUrl(url)) {
                      throw Exception('Could not launch $url');
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
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ServicesScreen()));
                },
                child: const Text("Services",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600))),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ContactSCreen()));
                },
                child: const Text("Contact",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600))),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CreateScreen()));
                },
                child: const Text("Create",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600))),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AboutScreen()));
                },
                child: const Text("About us",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600))),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const WhyScreen()));
                },
                child: const Text("Why chose us",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600))),
          ],
        ),
      ),
    );
  }
}
