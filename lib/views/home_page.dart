import 'package:app_consumer_api/controller/datas_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String id = "63693bc875250203e82f480a" ;

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
                      print(DatasController().findAll());
                    }
                  },
                  child: const Text('Get all')),

              ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print(DatasController().findBydId(id));
                    }
                  },
                  child: const Text('Get by id')),
/*
             ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print(DatasController().update());
                    }
                  },
                  child: const Text('Update')),

*/

             ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print(DatasController().insert());
                    }
                  },
                  child: const Text('Insert')),          

                
            ],
          ),
        ));
  }
}
