import 'package:app_self_control/components/workoutComponents/WorkOutItem.dart';
import 'package:flutter/material.dart';

class WorkOutHistoric extends StatefulWidget {
  const WorkOutHistoric({super.key});

  @override
  State<WorkOutHistoric> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WorkOutHistoric> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) {
        return const WorkOutItem();
      }
    );
  }
}
