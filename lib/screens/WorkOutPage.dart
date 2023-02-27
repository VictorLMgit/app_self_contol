import 'package:app_self_control/components/Menu.dart';
import 'package:flutter/material.dart';

class WorkOutPage extends StatefulWidget {
  const WorkOutPage({super.key});

  @override
  State<WorkOutPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WorkOutPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Builder(
        builder: (BuildContext context){
          return Scaffold(
            appBar: AppBar(
            leading: const Icon(Icons.sports_football),
            title: const Text("Treino"),
            bottom: const TabBar(tabs: [
              Tab(child: Text("Adicionar"),),
              Tab(child: Text("Histórico"),),
              Tab(child: Text("Notas"),),
              ]),
            ),
            body: const Menu(name: "Treino",),
          );
        },
      ),
      
    );
  }
}