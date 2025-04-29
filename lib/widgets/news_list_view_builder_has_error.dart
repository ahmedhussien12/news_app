import 'package:flutter/material.dart';

class NewsListViewsBuilderHasErrorr extends StatelessWidget {
  const NewsListViewsBuilderHasErrorr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 200,
        child: Center(
          child: Text("Oops, something went wrong!"),
        ),
      ),
    );
  }
}
