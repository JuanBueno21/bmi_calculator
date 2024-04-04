import 'package:flutter/material.dart';
import 'components/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Design of Theme <---------
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(),

      home: InputPage(),
    );
  }
}
