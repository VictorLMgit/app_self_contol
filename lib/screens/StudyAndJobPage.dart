import 'package:app_self_control/components/Menu.dart';
import 'package:app_self_control/screens/Forms/FormPage.dart';
import 'package:flutter/material.dart';

class StudyAndJobPage extends StatefulWidget {
  const StudyAndJobPage({super.key});

  @override
  State<StudyAndJobPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<StudyAndJobPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              leading: const Icon(Icons.work),
              title: const Text("Estudo e trabalho"),
              bottom: const TabBar(tabs: [
                Tab(
                  child: Text("Histórico"),
                ),
                Tab(
                  child: Text("Notas"),
                ),
              ]),
            ),
            body: const Menu(
              name: "Estudo e trabalho",
              listItensAlimentation: [],
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FormPage(name: "Estudo e trabalho");
                  }));
                },
                child: const Icon(Icons.add)),
          );
        },
      ),
    );
  }
}
