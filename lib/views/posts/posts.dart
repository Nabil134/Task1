import 'package:flutter/material.dart';
import 'package:task1/views/posts/all_posts/all_posts_view.dart';
import 'package:task1/views/posts/profiles/profiles_view.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffE43228),
          title: const Text('Lorem Ipsum'),
          /*appBar actions start here*/
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Icon(
                Icons.search,
                size: 25,
              ),
            ),
          ],
          /*appBar actions end here*/
          /*appBar leading start here*/
          leading: Icon(
            Icons.menu,
            size: 25,
          ),
          /*appBar leading end here*/
          bottom: TabBar(indicatorColor: Color(0xffFFFFFF), tabs: [
            Tab(
              child: Text('ALL POSTS'),
            ),
            Tab(
              child: Text('PROFILE'),
            ),
          ]),
        ),
        body: TabBarView(children: [
          AllPostsView(),
          ProfileView(),
        ]),
      ),
    );
  }
}
