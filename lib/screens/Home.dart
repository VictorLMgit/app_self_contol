import 'package:app_self_control/components/Menu.dart';
import 'package:flutter/material.dart';

import 'AlimentationPage.dart';
import 'StudyAndJobPage.dart';
import 'WorkOutPage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: currentPage);
  }

  setCurrentPage(page){
    setState(() {
      currentPage=page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageView(
        controller: pc,
        // ignore: sort_child_properties_last
        children: const [
          AlimentationPage(),
          WorkOutPage(),
          StudyAndJobPage(),
        ],
        onPageChanged: setCurrentPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.fastfood), label: "Alimentação"),
          BottomNavigationBarItem(icon: Icon(Icons.sports_football), label: "Treino"),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: "Estudo/Trabalho"),
        ],
        onTap: (page) {
          pc.animateToPage(page, duration: const Duration(milliseconds: 450), curve: Curves.ease);
        },
        backgroundColor: Colors.grey[100],
      ),
    );
  }
}
