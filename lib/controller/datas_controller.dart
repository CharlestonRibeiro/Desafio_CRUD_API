import 'package:app_consumer_api/models/datas_model.dart';
import 'package:app_consumer_api/repositories/datas_repository.dart';
import 'package:flutter/foundation.dart';

class DatasController {
  final _datasRepository = DatasRepository();

  Future<void> create() async {
    final datas = DatasModel(userId: "3", title: 'API ', completed: true);

    _datasRepository.create(datas);
    if (kDebugMode) {
      print(datas);
    }
  }

  Future<void> getAll() async {
    final datas = await _datasRepository.getAll();
    for (var data in datas) {
      if (kDebugMode) {
        print(data);
      }
    }
  }

  Future<void> getById(String id) async {
    final datas = await _datasRepository.getById(id);
    if (kDebugMode) {
      print(datas);
    }
  }

  Future<void> update() async {
    final item = DatasModel(
      userId: "99",
      title: 'title updated',
      completed: false,
    );

    _datasRepository.update(
        "636aa48175250203e82f4b72", item.userId, item.title, item.completed);
    if (kDebugMode) {
      print(item);
    }
  }

  Future<void> delete(String id) async {
    await _datasRepository.delete(id);
    if (kDebugMode) {
      print('deletado');
    }
  }
}
