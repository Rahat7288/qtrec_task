import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int activeIndex = 2;
  final controller = CarouselController();
  final images = [
    'assets/images/img2.png',
    'assets/images/img2.png',
    'assets/images/img2.png',
    'assets/images/img2.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: CarouselSlider.builder(
        itemCount: images.length,
        itemBuilder: (context, index, realIndex) {
          final image = images[index];
          return buildImage(image, index, context);
        },
        options: CarouselOptions(
          height: 300,
          autoPlay: false,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) => setState(() => activeIndex = index),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index, BuildContext context) =>
      Container(
        margin: const EdgeInsets.symmetric(horizontal: .5),
        height: 250,
        // width: MediaQuery.of(context).size.width / 1.5,
        // color: Colors.red,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset(
          urlImage,
          // height: MediaQuery.of(context).size.height,
          // height: 250,
          // color: Colors.red,
          width: MediaQuery.of(context).size.width,
          // fit: BoxFit.cover,
        ),
      );
}
