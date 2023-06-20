import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formularios/model/sumary_model.dart';

final sumaryModel = SumaryModel(
  temas: [
    Tema(
      name: 'Matemáticas',
      icon: FontAwesomeIcons.calculator,
      color1: const Color(0xff66A9F2),
      color2: const Color(0xff536CF6),
      lessons: [
        Lesson(lessonName: 'Operaciones algebraicas', sublessons: [
          SubLesson(
            lessionDescription: 'Operaciones algebraicas',
            urlLocalFile: 'assets/pdf/operaciones_algebraicas.pdf',
            name: 'Grade de las expresiones algebraicas',
            urlWebFile: 'www.google.com',
          ),
          SubLesson(
            lessionDescription: 'Operaciones algebraicas',
            urlLocalFile: 'assets/pdf/operaciones_algebraicas.pdf',
            name: 'Grade de las expresiones algebraicas',
            urlWebFile: 'www.google.com',
          ),
        ]),
        Lesson(
          lessonName: 'Ecuaciones y sistemas de ecuaciones',
          sublessons: [
            SubLesson(
              lessionDescription: 'Operaciones algebraicas',
              urlLocalFile: 'assets/pdf/operaciones_algebraicas.pdf',
              name: 'Grade de las expresiones algebraicas',
              urlWebFile: 'www.google.com',
            ),
          ],
        ),
        Lesson(lessonName: 'Logaritmos', sublessons: [
          SubLesson(
            lessionDescription: 'Operaciones algebraicas',
            urlLocalFile: 'assets/pdf/operaciones_algebraicas.pdf',
            name: 'Grade de las expresiones algebraicas',
            urlWebFile: 'www.google.com',
          ),
        ]),
        Lesson(
          lessonName: 'Progresiones',
          sublessons: [
            SubLesson(
              lessionDescription: 'Operaciones algebraicas',
              urlLocalFile: 'assets/pdf/operaciones_algebraicas.pdf',
              name: 'Grade de las expresiones algebraicas',
              urlWebFile: 'www.google.com',
            ),
          ],
        ),
      ],
    ),
    Tema(
      name: 'Física',
      color1: const Color(0xff317183),
      color2: const Color(0xff46997D),
      icon: FontAwesomeIcons.atom,
      lessons: [
        /* Lesson(
        lessonName: 'Introduccion',
        lessionDescription: 'Introduccion a las matematicas',
        urlLocalFile: 'assets/pdf/introduccion.pdf',
        urlWebFile: 'https://www.google.com',
      ), */
      ],
    ),
    Tema(
      name: 'Química',
      color1: Colors.red,
      color2: Colors.redAccent,
      icon: FontAwesomeIcons.flask,
      lessons: [
        /* Lesson(
        lessonName: 'Introduccion',
        lessionDescription: 'Introduccion a las matematicas',
        urlLocalFile: 'assets/pdf/introduccion.pdf',
        urlWebFile: 'https://www.google.com',
      ), */
      ],
    ),
  ],
);
