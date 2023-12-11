import 'package:flutter/material.dart';


class FoundPage extends StatelessWidget {
  const FoundPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
        Icons.bookmark_border_rounded,
        Icons.share,
        Icons.more_vert
        ].map((e) {
        return InkWell(
            onTap: () {},
            child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(e, size: 16),
            ),
        );
        }).toList(),
    );
  }
}

