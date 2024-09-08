import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:reveal_on_scroll/reveal_on_scroll.dart';

class FormDesktop extends StatefulWidget{
  const FormDesktop({super.key, required this.controller, required this.tag1, required this.tag2});
  final controller;
  final tag1;
  final tag2;

  @override
  State<FormDesktop> createState() => _FormDesktopState();
}

class _FormDesktopState extends State<FormDesktop> {


 final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
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
  }
  

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                                ScrollToReveal.withAnimation(
                                  label: widget.tag1,
                                  scrollController: widget.controller,
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
                                ScrollToReveal.withAnimation(
                                  label: widget.tag2,
                                  scrollController: widget.controller,
                                  reflectPosition: -100,
                                  animationType: AnimationType.findInRight,
                                  child: Center(
                                      child: Image.asset(
                                          "lib/assets/images/bird_logo.jpeg",
                                          height: 420)),
                                ),
                              ]);
  }
}