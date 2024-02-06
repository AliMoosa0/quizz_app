import 'package:flutter/material.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizPageState();
  }
}

class _QuizPageState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void setScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget =  StartScreen(setScreen);
    if(activeScreen == 'questions-screen'){
      screenWidget = const QuestionsScreen();
    }
       
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(150, 49, 205, 0.883),
                Color.fromRGBO(215, 68, 223, 0.882),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
