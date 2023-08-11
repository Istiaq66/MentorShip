import 'package:flutter/material.dart';

class ScrollMenu extends StatelessWidget {
  final String? image;
  final String? title;
  const ScrollMenu({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(image!),
          height: 60,
          width: 80,
        ),
        Text(
          title!,
          style: const TextStyle(fontFamily: 'SourceSansPro', fontSize: 12),
        ),
      ],
    );
  }
}
