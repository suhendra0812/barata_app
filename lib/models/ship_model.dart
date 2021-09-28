import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

class Ship {
  final double lon;
  final double lat;
  final String datetime;

  Ship({required this.lon, required this.lat, required this.datetime});

  factory Ship.fromJson(Map<String, dynamic> object) {
    return Ship(
        lon: object['lon'], lat: object['lat'], datetime: object['datetime']);
  }

  static Future<Ship> getShip(String id) async {
    final response = await get(Uri.parse(
        'https://suhendra0812.herokuapp.com/webgis/api/ship/detail/' + id));

    if (response.statusCode == 200) {
      var jsonObject = jsonDecode(response.body);
      var shipData = (jsonObject as Map<String, dynamic>)['properties'];
      return Ship.fromJson(shipData);
    } else {
      throw Exception('Failed to load ship');
    }
  }
}
