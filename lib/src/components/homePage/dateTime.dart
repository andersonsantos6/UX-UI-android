import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DateTimeNow extends StatelessWidget {
  const DateTimeNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var term = Random().nextInt(40);
    var months = [
      'Jan',
      'Fev',
      'Mar',
      'Abr',
      'Mai',
      'Jun',
      'Jul',
      'Ago',
      'Set',
      'Out',
      'Nov',
      'Dez'
    ];
    var dateTime = DateTime.now();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${dateTime.day}, de ${months[dateTime.month - 1]}.',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 2,
        ),
        const Icon(
          Icons.wb_twilight_outlined,
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          '${term} °C',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
