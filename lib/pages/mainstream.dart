import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pagesapp/components/pillcategory.dart';
import 'package:pagesapp/components/textfield_search.dart';
import 'package:pagesapp/pages/login.dart';
import 'package:pagesapp/pages/profile.dart';

class MainStream extends StatefulWidget {
  const MainStream({super.key});

  @override
  State<MainStream> createState() => _MainStreamState();
}

class _MainStreamState extends State<MainStream> {
  TextEditingController searchController = new TextEditingController();
  List<String> mainstreamCategories = [
    'All',
    'Sports',
    'ICT News',
    'Implementors',
    'Webinars',
    'Kanorific',
    'Bold',
    'Cute Cats'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          SafeArea(
              child: Container(
            margin:
                const EdgeInsets.only(top: 25, right: 25, left: 25, bottom: 10),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const Profile();
                    }))
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10, top: 3),
                    child: ClipOval(
                        child: Image.asset('assets/images/catnip1.png',
                            fit: BoxFit.cover, height: 35, width: 35)),
                  ),
                ),
                Text('Welcome',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text(' Catnip!',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
                Expanded(
                  child: Container(
                      alignment: Alignment.centerRight,
                      margin: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset(
                          'assets/svg/hamburger-4-svgrepo-com.svg')),
                )
              ],
            ),
          )),
          SafeArea(
            child: Container(
              margin: const EdgeInsets.only(top: 8, left: 20, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: CustomTextFieldSearch(
                            usernameController: searchController,
                            PrefixIconString:
                                'assets/svg/search-svgrepo-com.svg',
                            SuffixIconString:
                                'assets/svg/filter-svgrepo-com.svg',
                            hintTextValue: 'Search Keywords',
                            isObscureText: false)),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: GestureDetector(
                            onTap: () => {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const Profile();
                                  }))
                                },
                            child: Container(
                                child: SvgPicture.asset(
                                    'assets/svg/plus-circle-1441-svgrepo-com.svg'))))
                  ]),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 18, left: 20, right: 20),
              height: 35,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: mainstreamCategories.length,
                  itemBuilder: (context, index) {
                    return PillCategory(
                        categoryName: mainstreamCategories[index],
                        isSelected: index < 1 ? true : false);
                  })),
          Expanded(
            child: Container(
                child: Container(child: Row(children: [])),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 7,
                          blurRadius: 15,
                          offset: Offset(4, 4))
                    ],
                    color: const Color.fromARGB(255, 245, 244, 242),
                    borderRadius: BorderRadius.circular(20))),
          )
        ]),
      ),
    );
  }
}
