import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result({required this.resultScore, required this.resetHandler});

  String get resultPhase {
    var resultText = 'You did it!';
    if (resultScore <= 0) {
      resultText = 'you are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are .. strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: () => resetHandler(),
              child: Text('restart quiz'),
              style: TextButton.styleFrom(primary: Colors.orange,)
              ),
              
        ],
      ),
    );
  }
}
