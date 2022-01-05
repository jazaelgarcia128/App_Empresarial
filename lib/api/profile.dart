import 'dart:convert';
import 'package:app_motion/models/profile.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  final url = 'http://192.168.0.105:8080/';

  ProfileProvider() {}

  Future<List<Profile>> GetPerfil() async {
    final response = await http.get(Uri.parse(url + '/perfiles/lista'));

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes).toString();
      var datos = jsonDecode(body);
      List<Profile> perfil = [];
      print(datos);
      for (var json in datos) {
        perfil.add(Profile.fromJson(json));
      }
      return perfil;
    } else {
      throw Exception('Failed to load get');
    }
  }
}
