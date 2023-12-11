import 'package:flutter/material.dart';
import 'package:flutter_main_project/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  // This widget is the mainpage of your application.
  @override
  Widget build(BuildContext context) {
     return const MaterialApp(
      home: Homepage(),
    );
  }
}

