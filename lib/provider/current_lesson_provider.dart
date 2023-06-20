part of './providers.dart';

class CurrentLessonProvider extends ChangeNotifier {
  late Tema _tema;

  set setLesson(Tema tema) {
    _tema = tema;
    notifyListeners();
  }

  Tema get getLesson => _tema;
}
