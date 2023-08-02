import 'dart:math';
import 'package:flutter/material.dart';
import 'package:task_1/widgets/cards/custom_card.dart';
import 'package:task_1/models/lesson.dart';

class LessonCard extends StatelessWidget {
  final Lesson lesson;
  const LessonCard({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    int randomNumber =
        Random(DateTime.now().millisecondsSinceEpoch).nextInt(2) + 1;
    return CustomCard(
        item: (
          lesson.category ?? "Uncategorized",
          lesson.name ?? "No name",
          "${lesson.duration ?? 0} min",
          "assets/images/image$randomNumber.png"
        ),
        action: lesson.locked ?? true
            ? Icon(
                Icons.lock_rounded,
                color: Colors.grey.shade700,
              )
            : null);
  }
}
