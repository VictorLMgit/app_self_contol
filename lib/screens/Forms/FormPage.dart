import "package:app_self_control/components/alimentationComponents/AlimentationForm.dart";
import "package:app_self_control/components/studyAndJobComponents/StudyAndJobForm.dart";
import "package:app_self_control/components/workoutComponents/WorkOutForm.dart";
import "package:flutter/material.dart";

class FormPage extends StatefulWidget {
  final String name;
  const FormPage({Key? key, required this.name}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  setForm(name) {
    if (name == "Alimentação") {
      return AlimentationForm();
    } else if (name == "Estudo e trabalho") {
      return StudyAndJobForm();
    } else {
      return WorkOutForm();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar relatório de ${widget.name}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: setForm(widget.name),
      ),
    );
  }
}
