import "package:flutter/material.dart";

class WorkOutItem extends StatelessWidget {
  const WorkOutItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: const Icon(Icons.sports_football),
        title: const Text("Treino"),
        trailing: GestureDetector(
          onTap: (){
            print("rap");
          },
          child: Icon(Icons.arrow_right),
        ) ,
        subtitle: const Text("28/02/2023"),
      )
      );
  }
}
