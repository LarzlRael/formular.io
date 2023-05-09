import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formularios/theme/app_theme.dart';

/* state of is dark */
final themeProvider = StateProvider<bool>(
  (ref) => false,
);

/* List of colors inmutable */
final colorListProvider = Provider((ref) => colorList);

/* List of colors */
final selectedColorProvider = StateProvider<int>((ref) => 0);

// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifer, AppTheme>(
  (ref) => ThemeNotifer(),
);

/* Controller o notifier */
class ThemeNotifer extends StateNotifier<AppTheme> {
  /* STATE = estado => new AppTheme */
  ThemeNotifer() : super(AppTheme());

  void toogleDarkMode() {
    state = state.copyWith(
      isDarkMode: !state.isDarkMode,
    );
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(
      selectedColor: colorIndex,
    );
  }
}
