import 'dart:convert';

import 'package:app_consumer_api/models/datas_model.dart';
import 'package:http/http.dart' as http;

class DatasRepository {

  Future<List<DatasModel>> findAllDatas() async {
    var url = Uri.parse(
        'http://localhost:3031/datas');

    final datasResponse = await http.get(url);

    final datasList = jsonDecode(datasResponse.body);

    return datasList.map<DatasModel>((datasMap) {
      return DatasModel.fromMap(datasMap);
    }).toList();
  }

  Future<DatasModel> findByIdDatas(String id) async {
     var url = Uri.parse('http://localhost:3031/datas/$id');

    final datasResponse = await http.get(url);
    final datasMap = jsonDecode(datasResponse.body);
    return DatasModel.fromMap(datasMap);
  }

  Future<void> updateDatas(DatasModel data) async {
    var url = Uri.parse('http://localhost:3031/datas/${data.id}');
    
    
    await http.put((url), body: data.toJson(), 
    headers: {
      'content-type': 'application/json',
    });
  }

  Future<void> insertDatas(DatasModel activities) async {
    var url = Uri.parse('http://localhost:3031/datas');

    await http.post(
      (url),
      body: activities.toJson(),
      headers: {
        'content-type': 'application/json',
      },
    );
  }
}
