part of 'pages.dart';

class ScreenArguments {
  final String title;
  final Color color1;
  final Color color2;
  final IconData icon;
  ScreenArguments(this.title, this.color1, this.color2, this.icon);
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formular.io'),
      ),
      body: Layout(
        padding: 20,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /* CardCategory(title: 'Matematica'),
              CardCategory(title: 'Fisica'),
              CardCategory(title: ' Quimica'), */
              ButtonCategory(
                icon: FontAwesomeIcons.calculator,
                text: 'Matematica',
                onPress: () {
                  Navigator.pushNamed(
                    context,
                    'formulario_page',
                    arguments: ScreenArguments(
                      'Matematica',
                      Color(0xff66A9F2),
                      Color(0xff536CF6),
                      FontAwesomeIcons.calculator,
                    ),
                  );
                },
                color1: const Color(0xff66A9F2),
                color2: const Color(0xff536CF6),
              ),
              ButtonCategory(
                icon: FontAwesomeIcons.atom,
                text: 'Fisica',
                onPress: () {
                  Navigator.pushNamed(
                    context,
                    'formulario_page',
                    arguments: ScreenArguments(
                      'Fisica',
                      Color(0xff317183),
                      Color(0xff46997D),
                      FontAwesomeIcons.atom,
                    ),
                  );
                },
                color1: const Color(0xff317183),
                color2: const Color(0xff46997D),
              ),
              ButtonCategory(
                icon: FontAwesomeIcons.flask,
                text: 'Quimica',
                onPress: () {
                  Navigator.pushNamed(
                    context,
                    'formulario_page',
                    arguments: ScreenArguments(
                      'Quimica',
                      Colors.red,
                      Colors.redAccent,
                      FontAwesomeIcons.flask,
                    ),
                  );
                },
                color1: Colors.red,
                color2: Colors.redAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
