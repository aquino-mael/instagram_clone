import 'package:flutter/material.dart';

import 'widgets.dart';

class FixedAppBottomBar extends StatelessWidget {
  const FixedAppBottomBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.grey[300]!,
            width: 1.0
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.home,
              size: 30,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.play_arrow_outlined,
              size: 30,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.shopping_bag_outlined,
              size: 30,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const ProfileImage(
              hasStories: true,
              imageRadius: 12,
            ),
          )
        ],
      ),
    );
  }
}
