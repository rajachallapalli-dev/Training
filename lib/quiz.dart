import "package:flutter/material.dart";
import "package:adv_basics/start_screen.dart";
import "package:adv_basics/question_screen.dart";

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
  
}

class _QuizState extends State<Quiz>{
    var activeScreen='start-screen';

    void switchScreen(){
      setState(() {
        activeScreen= 'question-screen';
      });
    }
     @override  
    Widget build(context){
      Widget screenWidget = StartScreen(switchScreen);
      if(activeScreen=='question-screen'){
        screenWidget=const QuestionScreen();
      }
      return MaterialApp(home: Scaffold(body:Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color.fromARGB(255, 179, 200, 218), Color.fromARGB(255, 226, 214, 178)]
        ),
      ),
      child: screenWidget
      ),
      
    )
      );
    }
 }