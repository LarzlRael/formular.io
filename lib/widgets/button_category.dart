part of 'widgets.dart';

class ButtonCategory extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color1;
  final Color color2;
  final VoidCallback onPress;

  const ButtonCategory({
    Key? key,
    required this.text,
    required this.onPress,
    this.icon = Icons.category,
    this.color1 = Colors.grey,
    this.color2 = Colors.blueGrey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Ink(
        child: Stack(
          children: [
            _ButtonBackGround(color1: color1, color2: color2, icon: icon),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      /* height: 140, */
                      width: 40,
                    ),
                    FaIcon(
                      icon,
                      color: Colors.white,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: SimpleText(
                        text: text,
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    /*  const FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.white,
                      ), */
                    const SizedBox(
                      width: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ButtonBackGround extends StatelessWidget {
  final Color color1;
  final Color color2;
  final IconData icon;

  const _ButtonBackGround({
    Key? key,
    required this.color1,
    required this.color2,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
              right: -20,
              top: -20,
              child: FaIcon(
                icon,
                color: Colors.white.withOpacity(0.2),
                size: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
