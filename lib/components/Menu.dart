import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  final String name;
  const Menu({Key? key, required this.name}): super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {



  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Center(
          child: Text("Add ${widget.name}")
        ),
        Center(
          child: Text("Histórico ${widget.name}")
        ),
        Center(
          child: Text("Notas ${widget.name}")
        ),
      ]
    );
  }
}
