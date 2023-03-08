import "package:flutter/material.dart";

class StudyAndJobItem extends StatelessWidget {
  const StudyAndJobItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: const Icon(Icons.library_books),
        title: const Text("Estudo/Trabalho"),
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
