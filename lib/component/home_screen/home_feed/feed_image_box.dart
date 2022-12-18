import 'package:flutter/material.dart';

class FeedImageBox extends StatelessWidget {
  final String imgUrl;
  const FeedImageBox({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Image.asset(imgUrl),
    );
  }
}
