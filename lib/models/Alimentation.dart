

class Alimentation{
  
  final int id;
  final String? type;
  final String? ref1;
  final String? ref2;
  final String? ref3;
  final String? ref4;
  final String? date;
  final int? avaliation;
  final String? notes;
  final String? additional;

  static int qtd_alimentation = 0;

  const Alimentation({
    this.type,
    this.ref1,
    this.ref2,
    this.ref3,
    this.ref4,
    this.date,
    this.avaliation,
    this.notes,
    this.additional,
    required this.id
    }
  );

}

