import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';
import 'widgets.dart';

class FeedPost extends StatelessWidget {
  const FeedPost({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: .0,
      margin: const EdgeInsets.all(.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              bottom: 6.0,
            ),
            child: Row(
              children: [
                const ProfileImage(
                  hasStories: true,
                  imageRadius: 18,
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text(
                        "_aquino.mael",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        "Cachoeira De Itapecuru Carolina-Ma",
                        style: TextStyle(
                          fontSize: 10.0,
                          letterSpacing: .5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                  ),
                ),
              ],
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 400,
              maxWidth: double.maxFinite,
            ),
            child: const Placeholder(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.favorite_border_rounded,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.chat_outlined,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.send_outlined
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(
                  Icons.bookmark_border,
                ),
                onPressed: () {},
              ),
            ],
          ),
          const PostComments(),
        ],
      ),
    );
  }
}
