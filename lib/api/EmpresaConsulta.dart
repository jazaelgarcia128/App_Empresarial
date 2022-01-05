import 'dart:convert';
import 'package:app_motion/api/Empresa.dart';
import 'package:http/http.dart' as http;

Future<List<Empresa>> EmpresaGET(String nombre) async {
  var url =
      Uri.parse('http://192.168.0.105:8080/empresas/detailname/' + nombre);
  var response = await http.get(url);

  List<Empresa> empresas = [];

  if (response.statusCode == 200) {
    String body = utf8.decode(response.bodyBytes);
    final jsonDataEmp = jsonDecode(body);
    // nombre="";
    // empresas.clear();
    // for (var item in jsonDataEmp) {
    empresas.add(Empresa(
      jsonDataEmp["id"],
      jsonDataEmp["calle"],
      jsonDataEmp["exterior"],
      jsonDataEmp["interior"],
      jsonDataEmp["nombre"],
      jsonDataEmp["ciudad"],
      jsonDataEmp["estado"],
      jsonDataEmp["giro"],
    ));
    // }

// print(empresas);
    return empresas;
  } else {
    throw Exception("Fallo la conexion");
  }
}
