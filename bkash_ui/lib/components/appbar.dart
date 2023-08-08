import 'package:flutter/material.dart';

import 'balance_button.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      title: const Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/istiaq.jpg'),
            radius: 25,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Istiaq Ahmed',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              BalanceButton(),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset('images/icon_reward.png'),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset('images/fly.png'),
        ),
      ],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
    );
  }
}
