import 'package:formularios/model/sumary_model.dart';
import 'package:go_router/go_router.dart';
import '../pages/pages.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyStatefulWidget(),
    ),
    GoRoute(
      path: '/formulario_page',
      builder: (context, state) {
        Tema tema = state.extra as Tema;
        return FormularioPage(
          tema: tema,
        );
      },
    ),
    GoRoute(
      path: '/subtitles_list_page',
      builder: (context, state) {
        List<SubLesson> subLessons = state.extra as List<SubLesson>;
        return SubtitlesListPage(
          subLesson: subLessons,
        );
      },
    ),
    GoRoute(
      path: '/view_form_page',
      builder: (context, state) => const ViewFormPage(),
    ),
  ],
);
