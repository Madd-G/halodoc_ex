import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item(
      {super.key,
      required this.text,
      this.radius,
      this.height,
      this.width,
      this.spaceHeight,
      this.spaceWidth});

  final String text;
  final double? radius;
  final double? height;
  final double? width;
  final double? spaceHeight;
  final double? spaceWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: radius ?? 50.0,
          width: radius ?? 50.0,
          decoration: const BoxDecoration(
            color: Color(0xFFCCDBEF),
            borderRadius: BorderRadius.all(
              Radius.circular(100.0),
            ),
          ),
        ),
        SizedBox(
          height: spaceHeight ?? 0,
          width: spaceWidth ?? 0,
        ),
        SizedBox(
          width: width ?? 80.0,
          height: height ?? 50.0,
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
