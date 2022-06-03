import 'package:flutter/material.dart';
import 'package:flutter_carousel/widgets/carousel_caption.dart';
import 'package:flutter_carousel/widgets/carousel_controls.dart';
import 'package:flutter_carousel/widgets/carousel_image.dart';
import 'package:flutter_carousel/helper.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({Key? key}) : super(key: key);

  @override
  _CustomCarouselState createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  List<Map<String, String>> images = Helper.imageList();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        child: SizedBox(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                pageSnapping: true,
                itemBuilder: (context, pagePosition) {
                  final String? imagePath = images[pagePosition]['img'];
                  final String? imageCaption = images[pagePosition]['caption'];
                  return Stack(clipBehavior: Clip.none, children: <Widget>[
                    CarouselImage(imgagePath: imagePath!),
                    CarouselCaption(
                      imageCaption: imageCaption!,
                    ),
                    CarouselControls(
                        imageLength: images.length, currentIndex: pagePosition)
                  ]);
                })));
  }
}
