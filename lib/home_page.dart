import 'package:barata_app/app_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text('This is home page body'),
      ),
      drawer: const DrawerMenu(
        title: 'BARATA App',
      ),
    );
  }
}
