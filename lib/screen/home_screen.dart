import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:noonting_view_draw/component/home_screen/home_app_bar/home_cate_box.dart';
import 'package:noonting_view_draw/const/category.dart';
import 'package:noonting_view_draw/layout/default_layout.dart';
import 'package:noonting_view_draw/layout/home_screen/feed_layout.dart';
import 'package:noonting_view_draw/model/feed_model.dart';
import 'package:noonting_view_draw/model/user_model.dart';
import 'package:noonting_view_draw/provider/cate_provider.dart';
import 'package:noonting_view_draw/test_data.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cateProvider);

    return DefaultLayout(
        appBar: _appBar(),
        child: SingleChildScrollView(
          child: Column(
              children: state.map((e) => FeedLayOut(feedModel: e)).toList()),
        ));
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("커뮤니티"),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications_rounded)),
      ],
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: category
                      .map((e) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: HomeCateBox(cate: e),
                          ))
                      .toList()),
            ),
          )),
    );
  }
}
