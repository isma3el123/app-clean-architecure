import 'package:app_clean_architecture/Features/Home/presentation/views/widgets/CustomAppBar.dart';
import 'package:app_clean_architecture/Features/Home/presentation/views/widgets/CustomListViewItem.dart';
import 'package:app_clean_architecture/Features/Home/presentation/views/widgets/FeaturedMovieListView.dart';
import 'package:app_clean_architecture/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedMovieListView(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('BestSeller', style: Styles.titlemedium),
          )
        ],
      ),
    );
  }
}
