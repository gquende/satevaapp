import 'package:Mobile/pages/Home_page.dart';
import 'package:Mobile/pages/Login_Page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(HomeApp());
}

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  final _primaryColor = Color(0xFF15181F);
  final _secundaryColor = Color(0xFF1A1E27);
  final _menuColor = Color(0xFF0BBE35);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
