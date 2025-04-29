import 'package:flutter/material.dart';

class NewsListViewBuilderLoading extends StatelessWidget {
  const NewsListViewBuilderLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 200,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
