import 'package:app_consumer_api/models/activities_model.dart';
import 'package:app_consumer_api/repositories/activities_repository.dart';
import 'package:flutter/foundation.dart';

class ActivitiesController {
  final _activitiesRepository = ActivitiesRepository();

  Future<void> findAll() async {
    final activities = await _activitiesRepository.findAllActivities();
    for (var activity in activities) {
      if (kDebugMode) {
        print(activity);
      }
    }
  }

  Future<void> findBydId(int id) async {
    final activities = await _activitiesRepository.findByIdActivities(id);
    if (kDebugMode) {
      print(activities);
    }
  }

  Future<void> update() async {
    final activities = await _activitiesRepository.findByIdActivities(1);
    await _activitiesRepository.updateActivities(activities);
    
  }

  Future<void> insert() async {
    final activities = ActivitiesModel(
      id: 21, userId: 1, title: 'test', completed: 'test API');
    _activitiesRepository.insertActivities(activities);
    if (kDebugMode) {
      print(activities);
    }
  }
}
