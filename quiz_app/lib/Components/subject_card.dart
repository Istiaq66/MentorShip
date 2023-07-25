import 'package:flutter/material.dart';

class SubjectCard extends StatelessWidget {
  final String cardName;
  final String imageLink;
  final void Function()? onTap;

  const SubjectCard(
      {super.key, required this.cardName, this.onTap, required this.imageLink});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150,
        width: 150,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 1),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5.0, // soften the shadow
              spreadRadius: 2.0, //extend the shadow
              offset: Offset(
                1.0, // Move to right 5  horizontally
                1.0, // Move to bottom 5 Vertically
              ),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Material(
                    child: Ink.image(
                      fit: BoxFit.scaleDown,
                      image: AssetImage(imageLink),
                      child: InkWell(
                        onTap: onTap,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              cardName,
              style: const TextStyle(
                fontFamily: 'SourceSans3',
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
