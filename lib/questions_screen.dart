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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('question.....'),
          const SizedBox(height: 28),
          ElevatedButton(
            onPressed: () {},
            child: const Text("answer 1"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("answer 2"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("answer 3"),
          ),
        ],
      ),
    );
  }
}
