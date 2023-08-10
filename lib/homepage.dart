import 'package:flutter/material.dart';

class GalleriaHomepage extends StatefulWidget {
  const GalleriaHomepage({super.key});

  @override
  State<GalleriaHomepage> createState() => _GalleriaHomepageState();
}

class _GalleriaHomepageState extends State<GalleriaHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 300,
                  height: 500,
                  decoration: const BoxDecoration(color: Colors.black),
                )),
          ],
        ),
        Text("ART NAME"),
        Text("ART DETAILS"),
      ],
    )));
  }
}
