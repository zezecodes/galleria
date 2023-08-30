import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:galleria/art_page.dart';

class GalleriaHomepage extends StatefulWidget {
  const GalleriaHomepage({super.key});

  @override
  State<GalleriaHomepage> createState() => _GalleriaHomepageState();
}

class _GalleriaHomepageState extends State<GalleriaHomepage> {
  final pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart_fill), label: 'Favourites'),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled), label: 'Profile')
      ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: PageView(
              controller: pageController,
              children: const [ArtPage(), ArtPage(), ArtPage()]),
        ),
      ),
    );
  }
}
