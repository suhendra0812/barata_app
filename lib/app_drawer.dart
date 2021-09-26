import 'package:barata_app/pages/plan_page.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final String title;

  const DrawerMenu({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            title: const Text('Planning'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PlanningPage()));
            },
          ),
          ListTile(
            title: const Text('Acquisition'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Result'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
