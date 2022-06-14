import 'package:flutter/material.dart';

import '../pages/pages.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  /* Register and login  */
  'home_page': (_) => HomePage(),
  'formulario_page': (_) => FormularioPage(),
  'subtitles_list_page': (_) => SubtitlesListPage(),
};
