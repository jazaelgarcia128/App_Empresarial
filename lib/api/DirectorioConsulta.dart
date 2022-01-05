import 'dart:convert';
import 'package:app_motion/api/Socio.dart';
import 'package:http/http.dart' as http;

String url = "http://192.168.0.105:8080/perfiles/lista";

Future<List<Socio>> DirectorioApi() async {
  var response = await http.get(Uri.parse(url));
  List<Socio> socios = [];

  if (response.statusCode == 200) {
    String body = utf8.decode(response.bodyBytes);

    final jsonData = jsonDecode(body); //json valido

    //print(jsonData[0]["nombre"]);

    for (var item in jsonData) {
      socios.add(Socio(
          item["nombre"],
          item["paterno"],
          item["materno"],
          item["email"],
          item["telefono"],
          item["empresa"],
          item["descripcion"],
          item["servicio"],
          item["id"]));
    }

    return socios;
  } else {
    throw Exception("Fallo la conexion");
  }
}
