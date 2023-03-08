import 'package:flutter/material.dart';


class WorkOutForm extends StatefulWidget {
  const WorkOutForm({super.key});

  @override
  State<WorkOutForm> createState() => _WorkOutFormState();
}

class _WorkOutFormState extends State<WorkOutForm> {
  final _form = GlobalKey<FormState>();
  final _firstAsk = TextEditingController();
  final _secAsk = TextEditingController();
  final _thirdAsk = TextEditingController();
  final _fourtAsk = TextEditingController();
  final _fifthAsk = TextEditingController();

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
                      labelText: "Atividades Físicas praticadas",
                      prefixIcon: Icon(Icons.accessibility_new)
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
                      labelText: "Intensidade",
                      prefixIcon: Icon(Icons.health_and_safety)
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
                      labelText: "Disposição para treino",
                      prefixIcon: Icon(Icons.air)
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
                      labelText: "Tempo de Treino",
                      prefixIcon: Icon(Icons.access_time)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _fifthAsk,
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