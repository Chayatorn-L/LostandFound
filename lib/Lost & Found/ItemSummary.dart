import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Itemsummary extends StatelessWidget {
  const Itemsummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('รายละเอียดของหาย'),
      ),
      body: Center(
        child: Text('yay')
        ),
      );
    
  }
}
// ----------------modelController------------------------
// void loadData(QuizPaperModel quizPaper) async {
//   quizPaperModel = quizPaper;
//   loadingStatus.value = LoadingStatus.loading;
//   try {
//     final QuerySnapshot<Map<String, dynamic>> questionQuery =
//       await quizPaperFR.doc(quizPaper.id).collection('questions').get();
//     final questions = questionQuery.docs
//     .map((question) => Question.fromSnapshot(question))
//     .tolist();

//     quizPaper.questions = questions;
//     for (Question _question in quizPaper.questions!) {
//       final QuerySnapshot<Map<String, dynamic>> answersQuery = 
//         await quizePaperFR
//         .doc(quizPaper.id)
//         .collection('questions')
//         .doc(_question.id)
//         .collection('answers')
//         .get();
//     final answers = answersQuery.docs
//       .map((answer) => Answer.fromSnapshot(answer))
//       .toList();
//     _question.answers = answers;
//     }
//   } catch (e) {}
// }



