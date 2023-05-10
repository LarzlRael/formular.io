part of 'widgets.dart';

class CardCategory extends StatelessWidget {
  final String title;

  const CardCategory({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/show_form');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(
                0,
                10,
              ),
            ),
          ],
        ),
        child: Row(children: [
          const Icon(Icons.category),
          const SizedBox(width: 15),
          SimpleText(
            text: title,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ]),
      ),
    );
  }
}
