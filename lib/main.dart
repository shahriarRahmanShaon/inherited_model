import 'package:flutter/material.dart';
import 'package:inherited_model/availableColors_widget.dart';
import 'package:inherited_model/color_constants.dart';
import 'package:inherited_model/color_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Inherited Model',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var color1 = Colors.yellow;
  var color2 = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited Model'),
      ),
      body: AvailableColorsWidget(color1: color1, color2: color2,
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(onPressed: () {
                    setState(() {
                      color1 = colors.getRandomElement();
                    });
                  }, child: Text('chnage color1'),),
                  TextButton(onPressed: () {
                    setState(() {
                      color2 = colors.getRandomElement();
                    });
                  }, child: Text('chnage color2'))
                ],
              ),
              const ColorWidget(color: AvailableColors.one),
              const ColorWidget(color: AvailableColors.two)
            ],
          )),
    );
  }
}

