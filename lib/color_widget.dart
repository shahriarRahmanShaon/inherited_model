import 'package:flutter/material.dart';
import 'package:inherited_model/availableColors_widget.dart';
import 'package:inherited_model/color_constants.dart';
import 'dart:developer' as devtools show log;


class ColorWidget extends StatelessWidget {
  const ColorWidget({super.key, required this.color});

  final AvailableColors color;

  @override
  Widget build(BuildContext context) {
    switch (color){
      case AvailableColors.one:
        devtools.log('color1 widget rebuilt');
        break;
      case AvailableColors.two:
        devtools.log('color2 widget rebuilt');
        break;
    }
    final provider = AvailableColorsWidget.of(context, color);
    return Container(
      height: 100,
      color: color == AvailableColors.one ? provider.color1 : provider.color2,
    );
  }
}
