import 'package:app_self_control/components/Menu.dart';
import 'package:app_self_control/screens/Forms/FormPage.dart';
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
      length: 2,
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              leading: const Icon(Icons.fastfood),
              actions: [
                IconButton(onPressed: (){setState(() {});}, icon: Icon(Icons.refresh))
              ],
              title: const Text("Alimentação"),

              bottom: const TabBar(
                tabs: [
                  Tab(
                    child: Text("Histórico"),
                  ),
                  Tab(
                    child: Text("Notas"),
                  ),
                ],
              ),
            ),
            body: const Menu(
              name: "Alimentação",
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FormPage(name: "Alimentação");
                  })).then((value) => setState);
                },
                child: const Icon(Icons.add)),
          );
        },
      ),
    );
  }
}
