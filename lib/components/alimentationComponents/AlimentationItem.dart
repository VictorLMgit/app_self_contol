import "package:app_self_control/components/Avaliation.dart";
import "package:app_self_control/data/alimentation_dao.dart";
import "package:flutter/material.dart";

class AlimentationItem extends StatefulWidget {
  final int? id;
  final String? type;
  final String? ref1;
  final String? ref2;
  final String? ref3;
  final String? ref4;
  final String date;
  final int avaliation;
  final String? notes;
  final String? additional;

  const AlimentationItem({
    super.key,
    this.type,
    this.ref1,
    this.ref2,
    this.ref3,
    this.ref4,
    required this.date,
    required this.avaliation,
    this.notes,
    this.additional,
    this.id
    });

  @override
  State<AlimentationItem> createState() => _AlimentationItemState();
}

class _AlimentationItemState extends State<AlimentationItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4), color: Colors.indigo),
              height: 150,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  Icon(Icons.fastfood),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Alimentação " + widget.date.toString().substring(0,10)),
                        Avaliation(avaliation: widget.avaliation)
                      ],
                    ),
                    Padding(
                      padding:  const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_circle_right))
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  widget.notes == "" ? Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Sem Observações", style: TextStyle(fontSize: 12, color: Colors.white ),),
                  ) : Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(widget.notes.toString(),  style: TextStyle(fontSize: 12, color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(onPressed: () { AlimentationDao().delete(widget.id.toString()); },
                    icon: Icon(Icons.delete, color: Colors.white,)),
                  )

                ],
              )
            ],
          ),
        ],
      )
      );
  }
}
