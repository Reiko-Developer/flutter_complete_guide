import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final Function resultHandler;

  Result(this._resultScore, this.resultHandler);

  String get resultPhrase {
    String resultText;
    if (_resultScore < 10)
      resultText = '\nYou are awesome and innocent.';
    else if (_resultScore >= 10 && _resultScore < 25)
      resultText = 'You\'re likeable';
    else
      resultText = 'You\'re the dark side of the force. ';

    resultText += '\nYou\'ve made $_resultScore score points.';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: resultHandler,
          )
        ],
      ),
    );
  }
}
