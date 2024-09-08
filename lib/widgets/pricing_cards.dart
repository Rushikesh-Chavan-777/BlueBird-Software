import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PricingCards extends StatelessWidget {
  const PricingCards({super.key});
  @override
  Widget build(BuildContext context) {
    final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
    var width = MediaQuery.of(context).size.width;
    String _phone = '9032870624';
    return width > 600
        ? Column(
            children: [
              Text("Our pricing",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 55,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(
                    right: 80.0, left: 80.0, top: 20, bottom: 20),
                child: Text(
                    "At BlueBird Software, our mission is clear: to provide affordable software solutions that empower businesses worldwide. With a relentless focus on affordability, we're steadily emerging as the global one-stop solution for all types of software needs. Our commitment to affordability isn't just about cutting costs; it's about changing lives. By making high-quality software accessible to businesses of all sizes, we're leveling the playing field and empowering entrepreneurs to thrive in the digital age. With each solution we deliver, we're not just transforming businesses – we're changing lives for the better.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blue)),
                      height: 1150,
                      width: 400,
                      //color: Colors.white,
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 20),
                                textStyle: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                            onPressed: () {},
                            child: Text(
                              "Standard Plan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Image.asset('lib/assets/images/standard.jpg',
                              height: 200, width: 400),
                          Text(
                            '₹ 10,000',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '₹ 5,999',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Features Included",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 35),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "6 pages website",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Lifetime 24/7 Free Hosting Support",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Unlimited Images & Videos Upload",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Admin Access",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Free SSL Certificates",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "SEO Friendly Website",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "100% Responsive Website",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Call Button Integration",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Payment Gateway Integration",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Live Chat Integration",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "5 Free Email Id",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "WhatsApp Button Integration",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "1 Year Free Technical Support",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Annual Renewal For Hosting Rs.3000.",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          ElevatedButton(
                            onPressed: () async {
                              final url = Uri(scheme: 'tel', path: _phone);
                              await analytics.logEvent(name: 'call');
                              if (!await launchUrl(url)) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Text(
                              "Call now",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //card 2
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.blue,
                                Color.fromARGB(255, 80, 168, 236)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          color: Colors.blue,
                          border: Border.all(color: Colors.blue)),
                      height: 1150,
                      width: 400,
                      //color: Colors.white,
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 20),
                                textStyle: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                            onPressed: () {},
                            child: Text(
                              "Premium Plan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Image.asset(
                            'lib/assets/images/premium.jpeg',
                            height: 200,
                            width: 400,
                          ),
                          Text(
                            '₹ 18,000',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '₹ 12,999',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Features Included",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 35),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "14 pages website",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Lifetime 24/7 Free Hosting Support",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Unlimited Images & Videos Upload",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Admin Access",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Free SSL Certificates",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "SEO Friendly Website",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "100% Responsive Website",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Google Search Console Set-up",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Payment Gateway Integration",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Live Chat Integration",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "5 Free Email Id",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "WhatsApp Button Integration",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Wooo Commerce Features",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Annual Renewal For Hosting Rs.3000.",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          ElevatedButton(
                            onPressed: () async {
                              final url = Uri(scheme: 'tel', path: _phone);
                              await analytics.logEvent(name: 'call');
                              if (!await launchUrl(url)) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Text(
                              "Call now",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //card 3
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blue)),
                      height: 1150,
                      width: 400,
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 20),
                                textStyle: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                            onPressed: () {},
                            child: Text(
                              "Custom Plan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Image.asset(
                            'lib/assets/images/prepremium.jpeg',
                            height: 200,
                            width: 400,
                          ),
                          Text(
                            '₹ ???',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '₹ ???',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Features Included",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 35),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Pages: According to requirement",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Lifetime 24/7 Free Hosting Support",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Unlimited Images & Videos Upload",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Admin Access",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Free SSL Certificates",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "SEO Friendly Website",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "100% Responsive Website",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Call Button Integration",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Payment Gateway Integration",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Live Chat Integration",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Auto Invoice Bill Generator",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "WhatsApp Button Integration",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Dynamic Multi-Vendor Website",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Icon(Icons.circle, color: Colors.blueAccent),
                              const SizedBox(width: 10),
                              Text(
                                "Order Notification Features",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          ElevatedButton(
                            onPressed: () async {
                              final url = Uri(scheme: 'tel', path: _phone);
                              await analytics.logEvent(name: 'call');
                              if (!await launchUrl(url)) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Text(
                              "Call now",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        : Column(
            children: [
              Text(
                "Our Pricing Plans",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blue)),
                  height: 1130,
                  width: MediaQuery.of(context).size.width * 0.85,
                  //color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            /* padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20), */
                            textStyle: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        onPressed: () {},
                        child: Text(
                          "Standard Plan",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Image.asset('lib/assets/images/standard.jpg',
                          height: 200, width: 400),
                      Text(
                        '₹ 10,000',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '₹ 5,999',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Features Included",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "6 pages website",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Lifetime 24/7 Free Hosting",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Unlimited Images Upload",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Admin Access",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Free SSL Certificates",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "SEO Friendly Website",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "100% Responsive Website",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Call Button Integration",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Payment Gateway Integration",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Live Chat Integration",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "5 Free Email Id",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "WhatsApp Button Integration",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "1 Year Free Technical Support",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Annual Renewal @ Rs.3000.",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () async {
                          final url = Uri(scheme: 'tel', path: _phone);
                          await analytics.logEvent(name: 'call');
                          if (!await launchUrl(url)) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: Text(
                          "Call now",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //card 2
              Card(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.blue,
                            Color.fromARGB(255, 80, 168, 236)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      color: Colors.blue,
                      border: Border.all(color: Colors.blue)),
                  height: 1130,
                  width: MediaQuery.of(context).size.width * 0.85,
                  //color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            /* padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),*/
                            textStyle: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        onPressed: () {},
                        child: Text(
                          "Premium Plan",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Image.asset(
                        'lib/assets/images/premium.jpeg',
                        height: 200,
                        width: 400,
                      ),
                      Text(
                        '₹ 18,000',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '₹ 12,999',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Features Included",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "14 pages website",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Lifetime 24/7 Free Hosting",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Unlimited Images Upload",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Admin Access",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Free SSL Certificates",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "SEO Friendly Website",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "100% Responsive Website",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Google Search Console Set-up",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Payment Gateway Integration",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Live Chat Integration",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "5 Free Email Id",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "WhatsApp Button Integration",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Wooo Commerce Features",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Annual Renewal @ Rs.3000.",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () async {
                          final url = Uri(scheme: 'tel', path: _phone);
                          await analytics.logEvent(name: 'call');
                          if (!await launchUrl(url)) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: Text(
                          "Call now",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //card 3
              Card(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blue)),
                  height: 1130,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            textStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        onPressed: () {},
                        child: Text(
                          "Custom Plan",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Image.asset(
                        'lib/assets/images/prepremium.jpeg',
                        height: 200,
                        width: 400,
                      ),
                      Text(
                        '₹ ???',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '₹ ???',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Features Included",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Pages: According to need",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Lifetime 24/7 Free Hosting",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Unlimited Images Upload",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Admin Access",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Free SSL Certificates",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "SEO Friendly Website",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "100% Responsive Website",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Call Button Integration",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Payment Gateway Integration",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Live Chat Integration",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Auto Invoice Bill Generator",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "WhatsApp Button Integration",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Dynamic Multi-Vendor Website",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blueAccent),
                          const SizedBox(width: 10),
                          Text(
                            "Order Notification Features",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () async {
                          final url = Uri(scheme: 'tel', path: _phone);
                          await analytics.logEvent(name: 'call');
                          if (!await launchUrl(url)) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: Text(
                          "Call now",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}
