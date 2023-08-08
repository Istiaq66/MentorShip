import 'package:flutter/material.dart';

class BalanceButton extends StatelessWidget {
  const BalanceButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1.5),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.currency_exchange,
            color: Colors.pink,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'Tap For Balance',
            style: TextStyle(
                color: Colors.pink[400],
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'SourceSansPro'),
          ),
          const SizedBox(
            width: 30,
          )
        ],
      ),
    );
  }
}
