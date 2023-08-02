import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class Program {
  final DateTime? createdAt;
  final String? name;
  final String? category;
  final int? lesson;
  final String? id;

  const Program({
    this.createdAt,
    this.name,
    this.category,
    this.lesson,
    this.id,
  });

  @override
  String toString() {
    return 'Program(createdAt: $createdAt, name: $name, category: $category, lesson: $lesson, id: $id)';
  }

  factory Program.fromMap(Map<String, dynamic> data) => Program(
        createdAt: data['createdAt'] == null
            ? null
            : DateTime.parse(data['createdAt'] as String),
        name: data['name'] as String?,
        category: data['category'] as String?,
        lesson: data['lesson'] as int?,
        id: data['id'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'createdAt': createdAt?.toIso8601String(),
        'name': name,
        'category': category,
        'lesson': lesson,
        'id': id,
      };

  factory Program.fromJson(String data) {
    return Program.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  String toJson() => json.encode(toMap());
}
