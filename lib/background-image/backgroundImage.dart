import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  String name;
  BackgroundImage(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
              colors: [Colors.black, Colors.black12],
              begin: Alignment.bottomCenter)
          .createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/$name'),
                fit: BoxFit.cover,
                colorFilter:
                    const ColorFilter.mode(Colors.black54, BlendMode.darken))),
      ),
    );
  }
}
