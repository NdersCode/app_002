import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var question = 'What is your name';

  void printQuestion() {
    setState(() {
      question;
    });
  }

  @override
  Widget build(context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'question',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
