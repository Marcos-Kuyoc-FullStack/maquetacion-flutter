import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              text: 'General',
              color: Colors.blue,
              icon: Icons.border_all,
            ),
            _SingleCard(
              text: 'Transport',
              color: Colors.pink,
              icon: Icons.pie_chart,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              text: 'shoping',
              color: Colors.purple,
              icon: Icons.border_all,
            ),
            _SingleCard(
              text: 'Bill',
              color: Colors.purpleAccent,
              icon: Icons.pie_chart,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              text: 'Entretainment',
              color: Colors.blueAccent,
              icon: Icons.border_all,
            ),
            _SingleCard(
              text: 'Grocery',
              color: Colors.pinkAccent,
              icon: Icons.food_bank,
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
      color: const Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(20),
    );

    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: boxDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(icon),
                ),
                const SizedBox(height: 10),
                Text(
                  text,
                  style: TextStyle(
                    color: color,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
