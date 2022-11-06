// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ActivitiesModel {
  int id;
  int userId;
  String title;
  String completed;

  ActivitiesModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
  });

  // é um metodo que pega o objeto e trnsforma em um Map<String, dynamic>
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'title': title,
      'completed': completed,
    };
  }

  //é um CONSTRUTOR ele vai pegar um MAP e transformar em objeto telefone
  factory ActivitiesModel.fromMap(Map<String, dynamic> map) {
    return ActivitiesModel(
      id: map['id'] as int,
      userId: map['userId'] as int,
      title: map['title'] as String,
      completed: map['completed'] as String,
    );
  }

  //é um metodo que retorna uma string json do meu objeto
  String toJson() => json.encode(toMap());

  //é um metodo que baseado em uma string json retorna um objeto
  factory ActivitiesModel.fromJson(String source) =>
      ActivitiesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ActivitiesModel(id: $id, userId: $userId, title: $title, completed: $completed)';
  }
}
