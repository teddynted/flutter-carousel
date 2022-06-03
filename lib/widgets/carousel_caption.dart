import 'package:flutter/material.dart';

class CarouselCaption extends StatelessWidget {
  final String imageCaption;
  const CarouselCaption({Key? key, required this.imageCaption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 30,
        left: 30,
        child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(
                Radius.circular(35),
              ),
            ),
            child: Text(imageCaption,
                softWrap: true,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ))));
  }
}
