import 'package:app_self_control/components/alimentationComponents/AlimentationItem.dart';
import 'package:app_self_control/data/alimentation_dao.dart';
import 'package:flutter/material.dart';

class AlimentationForm extends StatefulWidget {
  const AlimentationForm({super.key});

  @override
  State<AlimentationForm> createState() => _AlimentationFormState();
}

class _AlimentationFormState extends State<AlimentationForm> {
  final _form = GlobalKey<FormState>();
  final _firstAsk = TextEditingController();
  final _secAsk = TextEditingController();
  final _thirdAsk = TextEditingController();
  final _fourtAsk = TextEditingController();
  final _fifthAsk = TextEditingController();
  final _adittional = TextEditingController();
  final _waterLevel = TextEditingController();

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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: "café da manhã",
                    prefixIcon: Icon(Icons.breakfast_dining)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _secAsk,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: "Almoço",
                    prefixIcon: Icon(Icons.dining)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _thirdAsk,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: "lanche da tarde",
                    prefixIcon: Icon(Icons.lunch_dining)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _fourtAsk,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: "Jantar",
                    prefixIcon: Icon(Icons.dining)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _waterLevel,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: "Consumo de água",
                    prefixIcon: Icon(Icons.water_drop)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _adittional,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: "Observações",
                    prefixIcon: Icon(Icons.notes)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _fifthAsk,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: "Avaliação do dia",
                    prefixIcon: Icon(Icons.star)),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (_form.currentState!.validate()) {
                    AlimentationDao().save(AlimentationItem(
                      date: DateTime.now().toString(),
                      ref1: _firstAsk.text,
                      ref2: _secAsk.text,
                      ref3: _thirdAsk.text,
                      ref4: _firstAsk.text,
                      additional: _waterLevel.text,
                      notes: _adittional.text,
                      avaliation: int.parse(_fifthAsk.text),
                    ));

                    Navigator.pop(context);
                  }
                },
                child: Icon(Icons.send))
          ],
        ),
      ),
    );
  }
}
