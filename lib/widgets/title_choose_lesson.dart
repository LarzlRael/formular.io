part of 'widgets.dart';

class TitleChooseLesson extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color1;
  final Color color2;

  const TitleChooseLesson({
    Key? key,
    required this.text,
    this.icon = Icons.category,
    this.color1 = Colors.grey,
    this.color2 = Colors.blueGrey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _ButtonChooseLessonBackGround(
          color1: color1,
          color2: color2,
          icon: icon,
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(
                  icon,
                  color: Colors.white,
                  size: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                SimpleText(
                  text: text,
                  upperCase: true,
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ButtonChooseLessonBackGround extends StatelessWidget {
  final Color color1;
  final Color color2;
  final IconData icon;

  const _ButtonChooseLessonBackGround({
    Key? key,
    required this.color1,
    required this.color2,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
              child: FaIcon(
                icon,
                color: Colors.white.withOpacity(0.2),
                size: 200,
              ),
              right: -20,
              top: -20,
            ),
          ],
        ),
      ),
      width: double.infinity,
      height: 140,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(4, 6),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
        ),
      ),
    );
  }
}
