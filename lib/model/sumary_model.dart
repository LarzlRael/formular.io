// To parse this JSON data, do
//
//     final sumaryModel = sumaryModelFromJson(jsonString);

import 'package:flutter/material.dart';

class SumaryModel {
  SumaryModel({
    required this.temas,
  });

  List<Tema> temas;
}

class Tema {
  Tema({
    required this.name,
    required this.lessons,
    required this.icon,
    required this.color1,
    required this.color2,
  });

  String name;
  List<Lesson> lessons;
  IconData icon;
  Color color1;
  Color color2;
}

class Lesson {
  Lesson({
    required this.lessonName,
    required this.sublessons,
  });

  String lessonName;
  List<SubLesson> sublessons;
}

class SubLesson {
  SubLesson({
    required this.lessionDescription,
    required this.urlLocalFile,
    required this.urlWebFile,
    required this.name,
  });

  String lessionDescription;
  String urlLocalFile;
  String urlWebFile;
  String name;
}
