import 'package:flutter/material.dart';

class PostComments extends StatelessWidget {
  const PostComments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 4.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Colors.black,
              ),
              text: "Liked by ",
              children: [
                TextSpan(
                  text: "_aquino.mael",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: " and ",
                ),
                TextSpan(
                  text: "others",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          RichText(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            text: const TextSpan(
              style: TextStyle(
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: "_aquino.mael ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "Minha descrição da imagem Minha descrição da imagem Minha descrição da imagem Minha descrição da imagem Minha descrição da imagem Minha descrição da imagem Minha descrição da imagem Minha descrição da imagem"
                ),
              ]
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            "View all 13.110 comments",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          RichText(
            text: const TextSpan(
              text: "17 hours ago",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0
              ),
              children: [
                TextSpan(
                  text: " • ",
                  style: TextStyle(
                    color: Colors.black,
                  )
                ),
                TextSpan(
                  text: "See translation",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    letterSpacing: .3
                  ),
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
