import 'package:flutter/material.dart';
import 'package:flutter_application_1/%20question_data.dart';
import 'package:flutter_application_1/quiz_page.dart';
class QuizPageController extends StatefulWidget {
  const QuizPageController({super.key});

  @override
  State<QuizPageController> createState() => _QuizPageControllerState();
}

class _QuizPageControllerState extends State<QuizPageController> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: questionsData.length,
      itemBuilder: (context, index) => QuizPage(
        question: questionsData[index],
        currentIndex: index,
        pageController: pageController,
      ),
    );
  }
}
