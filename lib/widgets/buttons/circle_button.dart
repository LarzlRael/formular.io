part of '../widgets.dart';

class CircleButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function onPressed;

  const CircleButton({
    Key? key,
    required this.color,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.2, sigmaY: 0.2),
      child: GestureDetector(
        onTap: () {
          onPressed();
        },
        child: Container(
          height: 180.0,
          margin: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /* CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icon, color: Colors.white, size: 30.0),
              ), */
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 35.0,
                child: Icon(icon, color: color, size: 30.0),
              ),
              SimpleText(
                text: text,
                color: Colors.white,
                fontSize: 16,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
    );
  }
}
