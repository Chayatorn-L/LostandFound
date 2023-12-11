import 'package:flutter/material.dart';


class FoundPage extends StatelessWidget {
  const FoundPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('กลับ'),
     );
  }
}

