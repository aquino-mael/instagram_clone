import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';

class Stories extends StatelessWidget {
  final String userName;
  final bool hasStories;
  final bool isMyStories;

  const Stories({
    Key? key,
    required this.userName,
    required this.hasStories,
    required this.isMyStories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: IntrinsicWidth(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileImage(
              hasStories: hasStories,
              imageRadius: 30,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              userName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                letterSpacing: .2,
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
                color: isMyStories
                  ? Colors.grey
                  : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
