import 'package:flutter/material.dart';

Widget shaderMask(Widget child) => ShaderMask(
    shaderCallback: (Rect rect) {
      return const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.transparent,
          Colors.transparent,
          Colors.purple,
          Colors.purple
        ],
        stops: [0.5, 0.7, 0.92, 0.2], // 10% purple, 80% transparent, 10% purple
      ).createShader(rect);
    },
    blendMode: BlendMode.dstOut,
    child: child);
