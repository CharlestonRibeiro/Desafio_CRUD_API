import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> getExercise() async {
  var url =
      Uri.parse('https://crudcrud.com/api/17b03228735b45caaba11694b689ca26');
  var response = await http.get(url);
  if (response.statusCode == 200) {
    return jsonDecode(utf8.decode(response.bodyBytes));
  } else {
    throw Exception('Erro ao carregar dados do Servidor');
  }
}


