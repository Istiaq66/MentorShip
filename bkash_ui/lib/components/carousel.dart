import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Caorousel extends StatefulWidget {
  const Caorousel({super.key});

  @override
  State<Caorousel> createState() => _CaorouselState();
}

class _CaorouselState extends State<Caorousel> {
  List banners = [
    {"id": 1, "image_path": 'images/banner.jpg'},
    {"id": 2, "image_path": 'images/banner_one.png'},
    {"id": 3, "image_path": 'images/banner_two.png'},
    {"id": 4, "image_path": 'images/banner_three.png'},
    {"id": 5, "image_path": 'images/download.jpg'},
  ];

  final CarouselController carouselController = CarouselController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: CarouselSlider(
            carouselController: carouselController,
            items: banners
                .map(
                  (item) => Image.asset(
                    item['image_path'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                )
                .toList(),
            options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 3,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: banners.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => carouselController.animateToPage(entry.key),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentIndex == entry.key
                        ? Colors.pink
                        : Colors.grey),
                width: currentIndex == entry.key ? 17 : 7,
                height: 7,
                margin: const EdgeInsets.symmetric(horizontal: 3),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
