import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final bool hasStories;
  final double? imageRadius;

  const ProfileImage({
    Key? key,
    required this.hasStories,
    this.imageRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: hasStories
            ? Colors.red
            : Colors.transparent,
        ),
      ),
      child: CircleAvatar(
        radius: imageRadius,
      ),
    );
  }
}
