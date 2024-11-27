import 'package:flutter/material.dart';

checkBookMark(bool bookMark) {
  if (bookMark == true) {
    return Icons.bookmark_outlined;
  } else {
    return Icons.bookmark_border;
  }
}

giveExperience(String month) {
  int input = int.parse(month);
  String experience;
  if (input > 12) {
    double years = input / 12;
    if (years == years.toInt()) {
      experience = "${input ~/ 12} year exp";
      return experience;
    } else {
      experience = "${(input / 12).toStringAsFixed(1)} year exp";
      return experience;
    }
  } else {
    experience = "${(input)} month exp";
    return experience;
  }
}
