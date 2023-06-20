part of 'pages.dart';

class FormularioPage extends StatelessWidget {
  const FormularioPage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final currentLessonProvider = context.read<CurrentLessonProvider>();
    final tema = currentLessonProvider.getLesson;

    return Scaffold(
      /* appBar: AppBar(
        title: Text(tema.name),
      ), */
      body: Layout(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* _titulos(), */
              /* Hero(
                tag: tema.name, */
              IconButton(
                onPressed: context.pop,
                icon: const Icon(
                  Icons.chevron_left_rounded,
                  size: 35,
                ),
              ),
              BannerChoosenLesson(
                text: tema.name,
                color1: tema.color1,
                color2: tema.color2,
                icon: tema.icon,
              ),
              /* ), */
              Expanded(
                /* child: GridView.count(
                    /* shrinkWrap: true, */
                    /* physics: NeverScrollableScrollPhysics(), */
                    crossAxisCount: 2,
                    children: tema.lessons.map((lesson) {
                      return CircleButton(
                        color: Colors.blue,
                        icon: Icons.food_bank,
                        text: lesson.lessonName,
                        onPressed: () {
                          context.push(
                            '/subtitles_list_page',
                            extra: lesson,
                          );
                        },
                      );
                    }).toList()), */
                child: AlignedGridView.count(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 25,
                  itemCount: currentLessonProvider.getLesson.lessons.length,
                  itemBuilder: (context, index) => CircleButton(
                    color: Colors.blue,
                    icon: Icons.food_bank,
                    text: tema.lessons[index].lessonName,
                    onPressed: () {
                      context.push(
                        '/subtitles_list_page',
                        extra: tema.lessons[index],
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

Widget _fondoApp() {
  final gradiente = Container(
    width: double.infinity,
    height: double.infinity,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1),
            Color.fromRGBO(35, 37, 57, 1),
          ]),
    ),
  );

  final pinkBox = Transform.rotate(
    angle: -pi / 5.0,
    child: Container(
      height: 360.0,
      width: 360.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80.0),
        color: Colors.pink,
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0),
          ],
        ),
      ),
    ),
  );

  return Stack(
    children: [
      gradiente,
      /* Positioned(
        top: -100.0,
        child: pinkBox,
      ), */
    ],
  );
}
