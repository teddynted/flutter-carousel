import 'package:flutter/material.dart';

class CarouselControls extends StatelessWidget {
  final int imageLength;
  final int currentIndex;
  const CarouselControls(
      {Key? key, required this.imageLength, required this.currentIndex})
      : super(key: key);
  getSizes() {}
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: (MediaQuery.of(context).size.width * 0.4),
        bottom: 40,
        child: SizedBox(
            child: Row(
          children: controls(imageLength, currentIndex),
        )));
  }

  List<Widget> controls(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(5),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.amber : Colors.blue,
            shape: BoxShape.circle),
      );
    });
  }
}
