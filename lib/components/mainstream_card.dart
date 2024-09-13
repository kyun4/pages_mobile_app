import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          margin: const EdgeInsets.all(20),
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
          child: Container(child: Row(children: []))),
    );
  }
}
