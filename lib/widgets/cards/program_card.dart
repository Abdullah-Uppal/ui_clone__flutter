import 'dart:math';
import 'package:flutter/material.dart';
import 'package:task_1/widgets/cards/custom_card.dart';
import 'package:task_1/models/program.dart';

class ProgramCard extends StatelessWidget {
  final Program program;
  const ProgramCard({super.key, required this.program});

  @override
  Widget build(BuildContext context) {
    int randomNumber =
        Random(DateTime.now().millisecondsSinceEpoch).nextInt(2) + 1;
    return CustomCard(item: (
      program.category ?? "Uncategorized",
      program.name ?? "No name",
      "${program.lesson} lessons",
      "assets/images/image$randomNumber.png"
    ));
  }
}
