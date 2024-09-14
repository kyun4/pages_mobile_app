import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pagesapp/components/mainstream_user_profile.dart';

class MainstreamCard extends StatefulWidget {
  const MainstreamCard({super.key});

  @override
  State<MainstreamCard> createState() => _MainstreamCardState();
}

class _MainstreamCardState extends State<MainstreamCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Container(
          margin: const EdgeInsets.only(left: 8, top: 20, bottom: 10),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black45.withOpacity(0.07),
                    spreadRadius: 7,
                    blurRadius: 15,
                    offset: Offset(4, 4))
              ],
              color: const Color.fromARGB(255, 245, 244, 242),
              borderRadius: BorderRadius.circular(12)),
          child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                MainstreamUserProfile(
                  ImageString: 'assets/images/patricksample1.jpg',
                  userDisplayName: 'Patrick',
                  userDisplaySubtitle: 'Friend',
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Text('What a great cat day!')),
                  ClipRRect(
                    child: Container(
                        height: MediaQuery.of(context).size.height - 380,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.all(10),
                        child: Image.asset('assets/images/catnip1.png',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover)),
                  )
                ])
              ]))),
    );
  }
}
