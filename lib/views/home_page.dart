import 'package:app_consumer_api/controller/datas_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Consumo API'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (kDebugMode) {
                    print(DatasController().create());
                  }
                },
                child: const Text(
                  'CREATE',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (kDebugMode) {
                    print(DatasController().getAll());
                  }
                },
                child: const Text(
                  'READ (ALL)',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (kDebugMode) {
                    print(
                        DatasController().getById("636aa48175250203e82f4b72"));
                  }
                },
                child: const Text(
                  'READ (BY ID)',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (kDebugMode) {
                    print(DatasController().update());
                  }
                },
                child: const Text(
                  'UPDATE',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (kDebugMode) {
                    print(DatasController().delete("636aa48175250203e82f4b72"));
                  }
                },
                child: const Text(
                  'DELETE',
                ),
              ),
            ],
          ),
        ));
  }
}
