import 'package:flutter/material.dart';

class TitleHome extends StatelessWidget {
  const TitleHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Titulo del texto',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Subtitulo del texto',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star_outlined,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}
