import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottomButton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.BMIResult, @required this.BMIText, @required this.interpretation});

  final String BMIText;
  final String interpretation;
  final String BMIResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style:kTitleTextStyle,
                ),
                height: 30.0,
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: activeCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      BMIText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      BMIResult,
                      style:kBMITextStyle
                    ),
                    Text(
                        interpretation,
                         style: TextStyle(
                           fontSize: 22.0,
                         )
                    ),
                  ],
                ),
              ),
            ),
             BottomButton(buttonTitle: 'RE-CALCULATE', onTap: (){
               Navigator.pop(context);
             }),
          ],
        )
      );
  }
}
