import 'dart:convert';
//
import 'package:http/http.dart' as http;

void CursoApi() async {
  try {
    Future<String> _cursos;
    var url = Uri.parse("http://localhost:8080/cursos/create");
    Map datos = {'Capacitacion': '09-11-2021'};
    var response = await http.post(url, body: datos);
    dynamic ip = jsonDecode(response.body);
  } catch (e) {
    print(e);
  }
}
