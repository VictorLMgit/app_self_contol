import 'package:app_self_control/components/studyAndJobComponents/StudyAndJobHistoric.dart';
import 'package:app_self_control/components/workoutComponents/WorkOutHistoric.dart';
import 'package:flutter/material.dart';
import 'alimentationComponents/AlimentationHistoric.dart';

class Menu extends StatefulWidget {
  final String name;
  const Menu({Key? key, required this.name}): super(key: key);



  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  setHistoric(name){
    if (name == "Alimentação") {
      return AlimentationHistoric();
    } else if(name == "Estudo e trabalho") {
      return StudyAndJobHistoric();
    } else {
      return WorkOutHistoric();
    }
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Center(
          child: setHistoric(widget.name)
        ),
        Center(
          child: Text("Notas ${widget.name}")
        ),
      ]
    );
  }
}
