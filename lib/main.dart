import 'package:bluebirdsoftware/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (kIsWeb) {
    MetaSEO().config();
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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BlueBird Software",
      home: HomeScreen(),
    );
  }
}
