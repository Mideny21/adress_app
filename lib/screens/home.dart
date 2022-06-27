import 'package:flutter/material.dart';

import '../components/cateogry_view.dart';
import '../widgets/blue_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [BlueBar(), CategoryView()],
    ));
  }
}
