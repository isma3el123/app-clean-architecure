import 'package:app_clean_architecture/Features/Home/presentation/views/widgets/CustomListViewItem.dart';
import 'package:flutter/material.dart';

class FeaturedMovieListView extends StatelessWidget {
  const FeaturedMovieListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomListViewItem();
          }),
    );
  }
}
