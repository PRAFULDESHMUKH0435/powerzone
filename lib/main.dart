import 'package:flutter/material.dart';
import 'package:powerzone/Screens/SplashScreen.dart';
import 'Screens/HomeScreen.dart';
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
