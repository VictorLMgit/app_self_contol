import 'package:flutter/material.dart';


class StudyAndJobForm extends StatefulWidget {
  const StudyAndJobForm({super.key});

  @override
  State<StudyAndJobForm> createState() => _StudyAndJobFormState();
}

class _StudyAndJobFormState extends State<StudyAndJobForm> {
  final _form = GlobalKey<FormState>();
  final _firstAsk = TextEditingController();
  final _secAsk = TextEditingController();
  final _thirdAsk = TextEditingController();
  final _fourtAsk = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
            key: _form,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _firstAsk,
                    style: TextStyle(fontSize: 22),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      labelText: "Atividades no trabalho",
                      prefixIcon: Icon(Icons.work)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _secAsk,
                    style: TextStyle(fontSize: 22),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      labelText: "O que foi estudado",
                      prefixIcon: Icon(Icons.library_books)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _thirdAsk,
                    style: TextStyle(fontSize: 22),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      labelText: "Avaliação de saúde mental",
                      prefixIcon: Icon(Icons.health_and_safety)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _fourtAsk,
                    style: TextStyle(fontSize: 22),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      labelText: "Avaliação do dia",
                      prefixIcon: Icon(Icons.star)
                    ),
                  ),
                ),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Icon(Icons.send))
              ],
            ),
          ),
    );
  }
}