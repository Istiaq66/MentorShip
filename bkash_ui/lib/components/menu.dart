import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final String? image;
  final String? title;
  const Menu({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: SizedBox(
        width: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(image!),
            ),
            Text(title!),
          ],
        
        ),
      ),
    );
  }
}
