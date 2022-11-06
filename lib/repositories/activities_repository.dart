import 'dart:convert';

import 'package:app_consumer_api/models/activities_model.dart';
import 'package:http/http.dart' as http;

class ActivitiesRepository {
  Future<List<ActivitiesModel>> findAllActivities() async {
    var url = Uri.parse(
        'https://jsonplaceholder.typicode.com/todos/');

    final activitiesResponse = await http.get(url);

    final activitiesList = jsonDecode(activitiesResponse.body);

    return activitiesList.map<ActivitiesModel>((activitiesMap) {
      return ActivitiesModel.fromMap(activitiesMap);
    }).toList();
  }

  Future<ActivitiesModel> findByIdActivities(int id) async {
    //var url = Uri.parse('https://crudcrud.com/api/89d0940353674cf899fc21ad58d846fc/Activities/$id');
    var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/$id');

    final activitiesResponse = await http.get(url);
    final activitiesMap = jsonDecode(activitiesResponse.body);
    return ActivitiesModel.fromMap(activitiesMap);
  }

  Future<void> updateActivities(ActivitiesModel activities) async {
   // var url = Uri.parse('https://crudcrud.com/api/89d0940353674cf899fc21ad58d846fc/Activities/${activities.idLocal}');
   var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/${activities.id}');
    
    
    await http.put((url), body: activities.toJson(), headers: {
      'content-type': 'application/json',
    });
  }

  Future<void> insertActivities(ActivitiesModel activities) async {
    //var url = Uri.parse('https://crudcrud.com/api/89d0940353674cf899fc21ad58d846fc/Activities/');
    var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/');

    await http.post(
      (url),
      body: activities.toJson(),
      headers: {
        'content-type': 'application/json',
      },
    );
  }
}
