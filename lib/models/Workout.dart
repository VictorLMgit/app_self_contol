class Workout {
 
  final int? id;
  final String? type;
  final String? workout_type;
  final String? intensity;
  final String? mood;
  final String? time_workout;
  final String? avaliation;
  final String? notes;
  final String? date;
  final String? additional;

  const Workout({
    this.type,
    this.workout_type,
    this.mood,
    this.intensity,
    this.time_workout,
    this.avaliation,
    this.notes,
    this.date,
    this.additional,
    required this.id
  });

}