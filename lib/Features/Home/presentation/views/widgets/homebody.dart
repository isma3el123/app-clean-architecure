import 'package:app_clean_architecture/Features/Home/presentation/views/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [CustomAppBar()],
    ));
  }
}
