part of 'pages.dart';

class SubtitlesListPage extends StatelessWidget {
  const SubtitlesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List<SubLesson>;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: args.map((e) {
            return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    'view_form_page',
                  );
                },
                child: Text(e.name + 'xd'));
          }).toList(),
        ),
      ),
    );
  }
}
