import 'package:app_self_control/components/studyAndJobComponents/StudyAndJobItem.dart';
import 'package:flutter/material.dart';

class StudyAndJobHistoric extends StatefulWidget {
  const StudyAndJobHistoric({super.key});

  @override
  State<StudyAndJobHistoric> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<StudyAndJobHistoric> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) {
        return const StudyAndJobItem();
      }
    );
  }
}
