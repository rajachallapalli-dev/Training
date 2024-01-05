import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;
  
  @override
  Widget build(context) {
    return 
      Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'learn fluttur in a fun way!',style: TextStyle(color: Colors.white,fontSize: 28,),
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right),
              label: const Text(
                'Start Qiuz',
              ),
            )
          ],
        ),
      );
    
  }
}
