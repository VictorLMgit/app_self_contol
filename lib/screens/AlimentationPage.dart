import 'package:app_self_control/components/Menu.dart';
import 'package:flutter/material.dart';

class AlimentationPage extends StatefulWidget {
  const AlimentationPage({super.key});

  @override
  State<AlimentationPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AlimentationPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Builder(
        builder: (BuildContext context){
          return Scaffold(
            appBar: AppBar(
            leading: const Icon(Icons.fastfood),
            title: const Text("Alimentação"),
            bottom: const TabBar(tabs: [
              Tab(child: Text("Adicionar"),),
              Tab(child: Text("Histórico"),),
              Tab(child: Text("Notas"),),
              ],
              ),
            ),
            body: const Menu(name: "Alimentação",),
          );
        },
      ),
      
    );
  }
}