import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  final String category;
  const CategoryBox({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xC2E4E4E4),
      ),
      child: Center(child: Text(category)),
    );
  }
}
