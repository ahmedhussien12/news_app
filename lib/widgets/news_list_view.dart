import 'package:flutter/material.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: EdgeInsets.only(bottom: 22),
          child: NewsTile(),
        ),
      ),
    );

    // ListView.builder(itemBuilder: (context, index) => Padding(
    //   padding: const EdgeInsets.only(bottom: 22),
    //   child: NewsTile(),
    // ),itemCount: 10,
    //
    // // physics:  NeverScrollableScrollPhysics(),
    //   // shrinkWrap: true, hena bs el moshkla eno bybni el item kolha mra w7da
    //  );
  }
}
