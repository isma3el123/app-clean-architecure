import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(
              10), // نفس القيمة المستخدمة في الـ Container
          child: Image.asset(
            "assets/images/my-self.jpg",
            fit: BoxFit.cover,
          ),
        ),
     
    );
  }
}
