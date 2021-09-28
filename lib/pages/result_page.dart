import 'package:barata_app/models/ship_model.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late Future<Ship> futureShip;

  @override
  void initState() {
    super.initState();
    futureShip = Ship.getShip('1');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<Ship>(
        future: futureShip,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data!.datetime);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
