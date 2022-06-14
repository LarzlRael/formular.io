import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget child;
  final double padding;
  const Layout({
    Key? key,
    required this.child,
    this.padding = 0,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1),
            Color.fromRGBO(35, 37, 57, 1),
          ],
        ),
      ),
      child: child,
    );
  }
}
