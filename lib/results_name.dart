import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'my_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResults,
      required this.resultsText,
      required this.interpretations});

  final String bmiResults;
  final String resultsText;
  final String interpretations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR RESULTS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                "YOUR RESULTS",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultsText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResults,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretations,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
              colour: kInactiveColor,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 40),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            height: kBottomContainerHeight,
            width: double.infinity,
            child: myButtonWidget(
              buttonTitle: "RE-CALCULATE",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
