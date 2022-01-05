import 'dart:convert';
import 'package:http/http.dart' as http;

void LoginApi() async {
  //try {
    var url = Uri.parse('https://yoyomitl.com/api/products');

    ///var url = new Uri.http("127.0.0.1:8000", "/api/products");
    var response = await http.get(url);
    dynamic ip = jsonDecode(response.body);
   // print(ip);
   // return ip;
 // } catch (e) {
   // print(e);
 // }
}

void RegistrarApi() async {
 /* try {
    var url = Uri.parse('https://yoyomitl.com/api/product');
    var response = await http.post(url, body: {'p': 'Blusa'});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    ///print(await http.read(Uri.parse('https://example.com/foobar.txt')));
  } catch (e) {
    print(e);
  }*/
}
