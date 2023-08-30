import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArtPage extends StatefulWidget {
  const ArtPage({super.key});

  @override
  State<ArtPage> createState() => _ArtPageState();
}

class _ArtPageState extends State<ArtPage> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
                width: 300,
                height: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(
                          'https://cdn.britannica.com/78/43678-050-F4DC8D93/Starry-Night-canvas-Vincent-van-Gogh-New-1889.jpg')),
                ))),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("The Starry Night",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Satoshi', fontSize: 30)),
                  Text("Painting by Vincent Van Gogh",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Satoshi', fontSize: 20)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      click = !click;
                    });
                  },
                  icon: Icon((click == false)
                      ? CupertinoIcons.heart
                      : (CupertinoIcons.heart_fill)),
                  iconSize: 35,
                  // color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        // const Text("Painting by Vincent Van Gogh",
        //     textAlign: TextAlign.center,
        //     style: TextStyle(fontFamily: 'Satoshi', fontSize: 20)),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
              "The Starry Night is an oil-on-canvas painting by the Dutch Post-Impressionist painter Vincent van Gogh. Painted in June 1889, it depicts the view from the east-facing window of his asylum room at Saint-Rémy-de-Provence, just before sunrise, with the addition of an imaginary village",
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Satoshi', fontSize: 15)),
        )
      ],
    );
  }
}
