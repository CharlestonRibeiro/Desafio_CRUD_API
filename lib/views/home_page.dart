import 'package:app_consumer_api/controller/activities_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final String id = "63670abe75250203e82f42e4";
  final int id = 1;

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
                      print(ActivitiesController().findAll());
                    }
                  },
                  child: const Text('Get all')),

              ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print(ActivitiesController().findBydId(id));
                    }
                  },
                  child: const Text('Get by id')),

             ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print(ActivitiesController().update());
                    }
                  },
                  child: const Text('Update')),



             ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print(ActivitiesController().insert());
                    }
                  },
                  child: const Text('Insert')),          

                
            ],
          ),
        ));
  }
}
