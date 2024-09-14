import 'package:flutter/material.dart';

class MainstreamUserProfile extends StatefulWidget {
  final String ImageString;
  final String userDisplayName;
  final String userDisplaySubtitle;

  const MainstreamUserProfile(
      {super.key,
      required this.ImageString,
      required this.userDisplayName,
      required this.userDisplaySubtitle});

  @override
  State<MainstreamUserProfile> createState() => _MainstreamUserProfileState();
}

class _MainstreamUserProfileState extends State<MainstreamUserProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
            Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 15, right: 15, bottom: 20),
                child: ClipOval(
                    child: Image.asset(widget.ImageString, height: 55))),
            Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Container(
                    child: Text(widget.userDisplayName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                  ),
                  Container(
                    child: Text(widget.userDisplaySubtitle,
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 10)),
                  ),
                ]))
          ]))
    ]));
  }
}
