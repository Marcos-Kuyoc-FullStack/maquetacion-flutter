import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/lighting.jpg')),
          const TitleHome(),
          const ButtonsHome(),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            child: const Text(
                'Minim sit cupidatat commodo laborum ad ea officia ullamco commodo adipisicing. '),
          )
        ],
      ),
    );
  }
}
