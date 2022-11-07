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

  Future<void> update() async {
    final datas = await _datasRepository.findByIdDatas("1");
    await _datasRepository.updateDatas(datas);
    
  }

  Future<void> insert() async {
    final datas = DatasModel(
      id: "11", userId: 5, title: 'test insert API', completed: true);
    _datasRepository.insertDatas(datas);
    if (kDebugMode) {
      print(datas);
    }
  }
}
