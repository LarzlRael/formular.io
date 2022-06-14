part of 'pages.dart';

class FormularioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Formular.io'),
      ),
      body: Stack(
        children: [
          _fondoApp(),
          Column(
            children: [
              /* _titulos(), */

              TitleChooseLesson(
                text: args.title,
                color1: args.color1,
                color2: args.color2,
                icon: args.icon,
              ),
              Expanded(
                child: GridView.count(
                    /* shrinkWrap: true, */
                    /* physics: NeverScrollableScrollPhysics(), */
                    crossAxisCount: 2,
                    children: categoryList.map((category) {
                      return (category);
                    }).toList()),
              ),
            ],
          ),
        ],
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
