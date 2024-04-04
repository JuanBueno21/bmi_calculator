import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(30.0),
                  alignment: Alignment.bottomCenter,
                  child: Text("YOUR RESULTS", style: kTitleTextStyle)),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                onPress: () {},
              ),
            ),
            BottomBottom(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: "RE-CALCULATE")
          ],
        ),
      ),
    );
  }
}
