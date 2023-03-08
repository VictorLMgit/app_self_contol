class StudyAndJob{
  
  final int? id;
  final String? type;
  final String? work_activity;
  final String? study_activity;
  final String? mental_health;
  final String? avaliation;
  final String? notes;
  final String? date;
  final String? additional;

  const StudyAndJob({
    this.type,
    this.work_activity,
    this.study_activity,
    this.mental_health,
    this.avaliation,
    this.notes,
    this.date,
    this.additional,
    required this.id
  });

}