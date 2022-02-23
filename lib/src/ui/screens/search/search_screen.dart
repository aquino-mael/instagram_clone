import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class SearchScreen extends StatelessWidget {
  static const String screenName = '/search_screen';

  const SearchScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleSpacing: 0.0,
            elevation: 0.0,
            backgroundColor: Colors.white,
            title: SearchBar(),
          ),
          RecomendationsBuilder(),
        ],
      ),
    );
  }
}

class RecomendationsBuilder extends StatelessWidget {
  const RecomendationsBuilder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const SizedBox.expand(
            child: Card(
              elevation: .0,
              margin: EdgeInsets.all(.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              child: Placeholder(),
            )
          );
        },
        childCount: 10,
      ),
    );
  }
}

class SearchSugestionsBuilder extends StatelessWidget {
  const SearchSugestionsBuilder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
