import 'package:flutter/material.dart';

class CarouselImage extends StatelessWidget {
  final String imgagePath;
  const CarouselImage({Key? key, required this.imgagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(35),
                  ),
                  image: DecorationImage(
                      image: AssetImage(imgagePath), fit: BoxFit.cover)),
            )));
  }
}
