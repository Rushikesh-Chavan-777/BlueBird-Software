import 'package:bluebirdsoftware/screens/contact_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_widgets/flutter_sticky_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Sticky extends StatefulWidget {
  const Sticky({super.key, required this.controller});
  final controller;

  @override
  State<Sticky> createState() => _StickyState();
}

class _StickyState extends State<Sticky> {
  final Uri whatsapp = Uri.parse(
      'https://wa.me/919032870624?text=Hi. I am coming from your website.');

  @override
  Widget build(BuildContext context) {
    return StickyWidget(
        initialPosition: StickyPosition(bottom: 20, right: 20),
        finalPosition: StickyPosition(
            bottom: 20, right: 20), //MediaQuery.of(context).size.height - 80
        controller: widget.controller,
        child: GestureDetector(
            onTap: () {
              launchUrl(whatsapp);
            },
            child: Column(
              children: [
                Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/2044px-WhatsApp.svg.png',
                    height: 60,
                    width: 60),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ContactSCreen(),
                        ),
                      );
                    },
                    icon: Icon(Icons.support_agent_outlined, size: 60)),
              ],
            )));
  }
}
