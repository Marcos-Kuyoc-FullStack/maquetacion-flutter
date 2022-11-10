import 'package:flutter/material.dart';

class ButtonsHome extends StatelessWidget {
  const ButtonsHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _ButtomCustom(
            icon: Icons.phone,
            name: 'Call',
          ),
          _ButtomCustom(
            icon: Icons.send,
            name: 'Route',
          ),
          _ButtomCustom(
            icon: Icons.share,
            name: 'share',
          ),
        ],
      ),
    );
  }
}

class _ButtomCustom extends StatelessWidget {
  final IconData icon;
  final String name;

  const _ButtomCustom({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color blue = Colors.blue;

    return Column(
      children: [
        Icon(
          icon,
          color: blue,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: blue,
          ),
        ),
      ],
    );
  }
}
