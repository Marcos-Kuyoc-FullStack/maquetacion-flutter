import 'dart:math';

import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({
    Key? key,
  }) : super(key: key);

  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, 0.8],
      colors: [Color.fromRGBO(46, 48, 95, 1), Color.fromRGBO(32, 35, 51, 1)],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(decoration: boxDecoration),
      const Positioned(
        top: -100,
        left: -30,
        child: _PinkBox(),
      ),
    ]);
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            color: Colors.pink,
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 188, 1),
                Color.fromRGBO(251, 142, 172, 1),
              ],
            )),
      ),
    );
  }
}
