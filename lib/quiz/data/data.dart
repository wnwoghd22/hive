import 'package:hive/quiz/data/quiz.dart';

class QuizData {
  static const List<Quiz> data = [
    const QuizChoice('프로펠러가 6개인 드론을 무엇이라고 하는가?', 3, 4, [
      '트라이콥터', '쿼드콥터', '헥사콥터', '옥타콥터'
    ]),
    const QuizOX('최대이륙중량 2kg 이상인 완구용 드론은 안전인증검사가 필요하다.', false),

  ];
}