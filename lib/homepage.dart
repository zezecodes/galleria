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
