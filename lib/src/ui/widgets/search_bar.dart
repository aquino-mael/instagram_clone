import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late final FocusNode focusNode;

  @override
  void initState() {
    super.initState();

    focusNode = FocusNode()
              ..addListener(() {
                setState(() {});
              });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 4.0),
      child: Row(
        children: [
          Expanded(
            child: Material(
              color: Colors.grey[200]!,
              borderRadius: BorderRadius.circular(10.0),
              elevation: .0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 6.0,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: TextField(
                        focusNode: focusNode,
                        decoration: const InputDecoration(
                          isCollapsed: true,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(0.0),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
          ),
          if(focusNode.hasFocus)
            const SizedBox(
              width: 8.0,
            ),
          AnimatedOpacity(
            opacity: focusNode.hasFocus ? 1.0 : 0.0,
            duration: const Duration(
              milliseconds: 250
            ),
            child: AnimatedContainer(
              duration: const Duration(
                milliseconds: 250,
              ),
              width: focusNode.hasFocus ? 60.0 : 0.0,
              child: GestureDetector(
                onTap: () {
                  focusNode.unfocus();
                },
                child: const Text(
                  'Cancel',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
