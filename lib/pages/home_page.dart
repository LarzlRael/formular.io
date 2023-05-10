part of 'pages.dart';

/* class ScreenArguments {
  final String title;
  final Color color1;
  final Color color2;
  final IconData icon;
  ScreenArguments(this.title, this.color1, this.color2, this.icon);
} */

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: const Text(appName),
      ), */
      body: Layout(
        padding: 20,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: sumaryModel.temas
                .map(
                  (e) => ButtonCategory(
                    icon: e.icon,
                    text: e.name,
                    onPress: () {
                      context.push('/formulario_page', extra: e);
                    },
                    color1: e.color1,
                    color2: e.color2,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      padding: 20,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: sumaryModel.temas
              .map(
                (e) => Hero(
                  tag: e.name,
                  child: ButtonCategory(
                    icon: e.icon,
                    text: e.name,
                    onPress: () {
                      context.push('/formulario_page', extra: e);
                    },
                    color1: e.color1,
                    color2: e.color2,
                  ),
                ),
              )
              .toList(),
          /* CardCategory(title: 'Matematica'),
              CardCategory(title: 'Fisica'),
              CardCategory(title: ' Quimica'), */
          /* ButtonCategory(
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
              ), */
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = [
    HomePage(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Subastareas(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Formularios',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icon.png', width: 24, height: 24),
            label: 'Subastareas',
          ),
        ],
        currentIndex: _selectedIndex,
        /* selectedItemColor: Colors.amber[800], */
        onTap: _onItemTapped,
      ),
    );
  }
}

class Subastareas extends StatelessWidget {
  const Subastareas({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Layout(
      padding: 30,
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icon.png', width: 100, height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Descarga la app de subastareas',
                  /*   fontSize: 20,
                    bottom: 20,
                    top: 20, */
                  style: textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              const Text(
                'Tienes tareas sin resolver? dile a alquien que lo haga por ti',
                textAlign: TextAlign.center,
                /* fontWeight: FontWeight.w500, */
              ),
            ],
          ),
        ),
      ),
    );
  }
}
