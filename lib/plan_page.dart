import 'package:flutter/material.dart';

class PlanningPage extends StatelessWidget {
  final String title;

  const PlanningPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text('This is planning page'),
      ),
    );
  }
}
