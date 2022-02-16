import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../mixins/mixins.dart';
import '../../view_models/view_models.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget with NavigationManager {
  static const screenName = '/home_screen';

  final IHomeViewModel viewModel;

  const HomeScreen({ Key? key, required this.viewModel }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    handleNavigaton(viewModel.streamRoute);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          "Instagram",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              viewModel.showRecentActivities();
            },
            icon: const Icon(
              Icons.favorite_border_rounded,
              color: Colors.black, 
            ),
          ),
          IconButton(
            onPressed: () {
              viewModel.showDirects();
            },
            icon: const Icon(
              Icons.message_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 90,
              child: StoriesBuilder(),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              height: 16,
              thickness: 1.0,
            ),
          ),
          FeedBuilder(),
        ],
      ),
    );
  }
}

class StoriesBuilder extends StatelessWidget {
  const StoriesBuilder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        if(index == 0) {
          return const Stories(
            userName: 'Your story',
            hasStories: false,
            isMyStories: true,
          );
        }

        return const Stories(
          userName: '_aquino.mael',
          hasStories: true,
          isMyStories: false,
        );
      },
    );
  }
}

class FeedBuilder extends StatelessWidget {
  const FeedBuilder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const FeedPost();
        },
      ),
    );
  }
}
