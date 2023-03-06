import 'package:flutter/material.dart';
import 'package:survey/result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}
// void main()=>runApp(MyApp());
class MyApp extends StatefulWidget {
   
   @override
  State<StatefulWidget> createState() {
    
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {

  final _questions= const [
     {
      'questiontext':'What\'s your favourite colour?',
      'answers':[
      {'text':'black','score':10},
      {'text':'white','score':20},
      {'text':'red', 'score':30},
      {'text':'yellow', 'score':40}
      ]

     }, 
      {
      'questiontext':'What\'s your favourite animal?',
      'answers':[
      {'text':'rabbit','score':10},
      {'text':'elephant','score':20},
      {'text':'dog','score':30},
      {'text':'lion','score':40}
      ]

     } 
    ];

  var _questionIndex=0;

  var _totalScore=0;

  void _resetQuiz(){

    setState(() {
    
    _questionIndex=0;

    _totalScore=0;

    });
  

  }

  void _answerQuestion(int score){

    _totalScore=_totalScore+score;

    setState(() {
      _questionIndex=_questionIndex+1;
    
    });
    print(_questionIndex);
    if(_questionIndex<_questions.length){
        print("We have more questions");
     }
    else{
      print("No more questions");
    } 

    // print('Answer Chosen');
  
  }

  @override
  Widget build(BuildContext context) {
    
    // var dummy=const ['Hello'];
    // dummy.add('Apple');
    // print(dummy);
    // dummy=[];
    // questions=[] //does not work if questions is a constant

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('App'),
            ),
            body:_questionIndex<_questions.length?Quiz(answerQuestion:_answerQuestion,questions:_questions,questionIndex:_questionIndex):Result(_totalScore,_resetQuiz)
            )
            );
  }
}
