part of 'pages.dart';

class FormularioPage extends StatelessWidget {
  final Tema tema;

  const FormularioPage({super.key, required this.tema});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
      ),
      body: Layout(
        child: Stack(
          children: [
            Column(
              children: [
                /* _titulos(), */
                /* Hero(
                  tag: tema.name, */
                TitleChooseLesson(
                  text: tema.name,
                  color1: tema.color1,
                  color2: tema.color2,
                  icon: tema.icon,
                ),
                /* ), */
                Expanded(
                  child: GridView.count(
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
                              extra: lesson.sublessons,
                            );
                          },
                        );
                      }).toList()),
                ),
              ],
            ),
          ],
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
