import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

import 'package:formularios/constant/constant.dart';
import 'package:formularios/provider/providers.dart';
import 'package:formularios/routes/app_routes.dart';
import 'package:formularios/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Plugin must be initialized before using
  await FlutterDownloader.initialize(
      debug:
          true, // optional: set to false to disable printing logs to console (default: true)
      ignoreSsl:
          true // option: set to false to disable working with http links (default: false)
      );

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProviderNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<ThemeProviderNotifier>().appTheme;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CurrentLessonProvider(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: appName,
        theme: appTheme.getTheme(),
        routerConfig: appRouter,
      ),
    );
  }
}
