import 'package:app_self_control/components/alimentationComponents/AlimentationItem.dart';
import 'package:app_self_control/data/alimentation_dao.dart';
import 'package:flutter/material.dart';

class AlimentationHistoric extends StatefulWidget {
  final List<AlimentationItem> listItensAlimentation;
  const AlimentationHistoric({super.key, required this.listItensAlimentation});

  @override
  State<AlimentationHistoric> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AlimentationHistoric> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8, bottom: 70),
      child: FutureBuilder<List<AlimentationItem>>(
          future: AlimentationDao().findAll(),
          builder: (context, snapshot) {
            List<AlimentationItem>? items = snapshot.data;
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(
                  child: Column(
                    children: const [
                      CircularProgressIndicator(),
                      Text("Carregando")
                    ],
                  ),
                );
                break;
              case ConnectionState.waiting:
                return Center(
                  child: Column(
                    children: const [
                      CircularProgressIndicator(),
                      Text("Carregando")
                    ],
                  ),
                );
                break;
              case ConnectionState.active:
                return Center(
                  child: Column(
                    children: const [
                      CircularProgressIndicator(),
                      Text("Carregando")
                    ],
                  ),
                );
                break;
              case ConnectionState.done:
                if (snapshot.hasData && items != null) {
                  if (items.isNotEmpty) {
                    return ListView.builder(
                      itemCount: widget.listItensAlimentation.length,
                      itemBuilder: (BuildContext context, index) {
                        final AlimentationItem alimentation =
                            widget.listItensAlimentation[index];
                        return alimentation;
                      },
                    );
                  }
                  return Center(
                    child: Column(
                      children: const [
                        Icon(
                          Icons.error_outline,
                          size: 128,
                        ),
                        Text(
                          "Sem Registro de alimentação!",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  );
                }
                return const Text("Erro ao carregar tarefas!");
                break;
              default:
                return const Text("erro desconhecido");
            }
          }),
    );
  }
}
