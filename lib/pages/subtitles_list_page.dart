part of 'pages.dart';

class SubtitlesListPage extends StatelessWidget {
  final Lesson lesson;
  /* final String subLessonName; */
  const SubtitlesListPage({
    Key? key,
    required this.lesson,
    /* required this.subLessonName, */
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subLesson = lesson.sublessons;
    return Scaffold(
      /* appBar: AppBar(
        title: Text(lesson.lessonName),
      ), */
      body: Layout(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: context.pop,
                    icon: const Icon(
                      Icons.chevron_left_rounded,
                      size: 35,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      lesson.lessonName,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: subLesson.length,
                  itemBuilder: (_, int index) => ListTile(
                    title: Text(subLesson[index].name),
                    onTap: () {
                      context.push(
                        '/view_form_page',
                        extra: subLesson[index],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
