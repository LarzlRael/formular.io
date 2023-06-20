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
      builder: (context, state) => const FormularioPage(),
    ),
    GoRoute(
      path: '/subtitles_list_page',
      builder: (context, state) {
        Lesson lessons = state.extra as Lesson;
        return SubtitlesListPage(
          lesson: lessons,
        );
      },
    ),
    GoRoute(
      path: '/view_form_page',
      builder: (context, state) {
        SubLesson subLesson = state.extra as SubLesson;
        return ViewFormPage(
          subLesson: subLesson,
        );
      },
    ),
  ],
);
