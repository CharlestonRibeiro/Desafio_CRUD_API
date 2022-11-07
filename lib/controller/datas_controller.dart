import 'package:app_consumer_api/models/datas_model.dart';
import 'package:app_consumer_api/repositories/datas_repository.dart';
import 'package:flutter/foundation.dart';

class DatasController {
  final _datasRepository = DatasRepository();

  Future<void> findAll() async {
    final datas = await _datasRepository.findAllDatas();
    for (var data in datas) {
      if (kDebugMode) {
        print(data);
      }
    }
  }

  Future<void> findBydId(String id) async {
    final datas = await _datasRepository.findByIdDatas(id);
    if (kDebugMode) {
      print(datas);
    }
  }

/*
  Future<void> update() async {
    const String id = "63693bc875250203e82f480a";
    var datas = await _datasRepository.findByIdDatas(id);;
    await _datasRepository.updateDatas(datas);
    if (kDebugMode) {
      print(datas);
    }
  }
*/  

  Future<void> insert() async {
    final datas =
        DatasModel(userId: 3, title: 'API ', completed: true);
    _datasRepository.insertDatas(datas);
    if (kDebugMode) {
      print(datas);
    }
  }
}
