import 'dart:convert';
import 'package:app_consumer_api/models/datas_model.dart';
import 'package:http/http.dart' as http;

class DatasRepository {
  Future<void> create(DatasModel data) async {
    var url = Uri.parse(
        'https://crudcrud.com/api/d83aa20f95e74929b2bfe71f481483b2/data');

    await http.post(
      (url),
      body: data.toJson(),
      headers: {
        'content-type': 'application/json',
      },
    );
  }

  Future<List<DatasModel>> getAll() async {
    var url = Uri.parse(
        'https://crudcrud.com/api/d83aa20f95e74929b2bfe71f481483b2/data');

    final datasResponse = await http.get(url);

    final datasList = jsonDecode(datasResponse.body);

    return datasList.map<DatasModel>((datasMap) {
      return DatasModel.fromMap(datasMap);
    }).toList();
  }

  Future<DatasModel> getById(String id) async {
    var url = Uri.parse(
        'https://crudcrud.com/api/d83aa20f95e74929b2bfe71f481483b2/data/$id');

    final datasResponse = await http.get(url);
    final datasMap = jsonDecode(datasResponse.body);
    return DatasModel.fromMap(datasMap);
  }

  Future<http.Response> update(
      String id, String userId, String title, bool completed) async {
    var url = Uri.parse(
        'https://crudcrud.com/api/d83aa20f95e74929b2bfe71f481483b2/data/$id');

    return http.put(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'userId': userId,
        'title': title,
        'completed': completed,
      }),
    );
  }

  Future<http.Response> delete(String id) async {
    var url = Uri.parse(
        'https://crudcrud.com/api/d83aa20f95e74929b2bfe71f481483b2/data/$id');

    final http.Response dataResponse = await http.delete(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    return dataResponse;
  }
}
