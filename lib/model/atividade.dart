// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

class Atividade {
  int id;
  String nome;
  String descricao;
  bool completo;

  Atividade({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.completo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'descricao': descricao,
      'completo': completo,
    };
  }

  factory Atividade.fromMap(Map<String, dynamic> map) {
    return Atividade(
      id: map['id'] as int,
      nome: map['nome'] as String,
      descricao: map['descricao'] as String,
      completo: map['completo'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Atividade.fromJson(String source) =>
      Atividade.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Atividade(id: $id, nome: $nome, descricao: $descricao, completo: $completo)';
  }

 
}
