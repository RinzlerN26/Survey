import  'package:flutter/material.dart';




class Result extends StatelessWidget {

  final int resultScore;

  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);

  String get resultPhrase{

    String resultText;

    if(resultScore<=50){
      resultText="awesome and innocent";
    }
    else if(resultScore<=70){
      resultText="likable";
    }
    else if(resultScore<=90){
      resultText="strange";
    }
    else{
     resultText="bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child:Column(
      children: [
        Text(resultPhrase,
        style:TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
        ),
        FlatButton(onPressed: resetHandler, child:Text("Restart Quiz"),textColor: Colors.blue)
      ],
    ));
  }
}