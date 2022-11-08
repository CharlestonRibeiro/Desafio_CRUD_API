import 'dart:convert';

class DatasModel {
  String userId;
  String title;
  bool completed;

  DatasModel({
    required this.userId,
    required this.title,
    required this.completed,
  });

// é um metodo que pega o objeto e transforma em um Map<String, dynamic>
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'title': title,
      'completed': completed,
    };
  }

//é um CONSTRUTOR ele vai pegar um MAP e transformar em objeto
  factory DatasModel.fromMap(Map<String, dynamic> map) {
    return DatasModel(
      userId: map['userId'] as String,
      title: map['title'] as String,
      completed: map['completed'] as bool,
    );
  }

//é um metodo que retorna uma string json do meu objeto
  String toJson() => json.encode(toMap());

//é um metodo que baseado em uma string json retorna um objeto
  factory DatasModel.fromJson(String source) =>
      DatasModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ActivitiesModel(userId: $userId, title: $title, completed: $completed)';
  }
}


