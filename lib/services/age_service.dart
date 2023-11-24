import 'package:flutter/material.dart';

List<int> findAge(String age, BuildContext context) {
  try {
    final currentDate = DateTime.now();
    final parsedDate = DateTime.parse(age);
    final ageNow = currentDate.year - parsedDate.year;
    final months = ageNow * 12;
    final days = currentDate.day - parsedDate.day;
    List<int> data = [ageNow, months, days];
    return data;
  } on FormatException catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: const Color.fromARGB(255, 40, 41, 42),
        content: Text(
          e.message,
          style: const TextStyle(color: Color(0xffD8D9DA)),
        )));
  }
  throw Exception('FAILED');
}
