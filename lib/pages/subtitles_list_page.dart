part of 'pages.dart';

class SubtitlesListPage extends StatelessWidget {
  final List<SubLesson> subLesson;
  const SubtitlesListPage({Key? key, required this.subLesson})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: subLesson.map((e) {
            return GestureDetector(
                onTap: () {
                  context.push('/view_form_page');
                },
                child: Text(e.name + 'xd'));
          }).toList(),
        ),
      ),
    );
  }
}
