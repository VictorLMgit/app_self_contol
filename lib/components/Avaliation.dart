import 'package:flutter/material.dart';

class Avaliation extends StatelessWidget {
  final int avaliation;
  const Avaliation({
    required this.avaliation,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (avaliation >= 1) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (avaliation >= 2) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (avaliation >= 3) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (avaliation >= 4) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (avaliation >= 5) ? Colors.blue : Colors.blue[100],
        ),
      ],
    );;
  }
}