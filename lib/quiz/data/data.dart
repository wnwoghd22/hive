import 'package:flutter/cupertino.dart';
import 'package:hive/quiz/data/quiz.dart';

class QuizData {
  static const List<List<Quiz>> data = [
    [ // 드론 기초
      const QuizChoice('프로펠러가 6개인 드론을 무엇이라고 하는가?', 3, 4, [
        '트라이콥터', '쿼드콥터', '헥사콥터', '옥타콥터'
      ]),
      const QuizMultiChoice('드론 센서에 대한 설명으로 옳은 것을 모두 고르시오.',
          [ false, true, true, false, true ],
          5,
          [
            '가속도 센서는 기체의 기울어짐을 측정한다.',
            '기압 센서는 기체의 높이를 유지하도록 해준다.',
            '가속도 센서와 각속도 센서를 합쳐 IMU라고 부르기도 한다.',
            'GPS 수신기는 기체의 방향을 측정한다.',
            'GPS 수신기는 최소 3개 이상의 인공위성을 통해 기체의 좌표를 읽어들인다.'
          ])
    ],
    [ // 항공기상
      const QuizOX('습도가 높아지면 프로펠러에서 발생하는 양력이 증가한다.', false),
    ],
    [ // 항공법규
      const QuizOX('최대이륙중량 2kg 이상인 완구용 드론은 안전인증검사가 필요하다.', false),
      const QuizChoice('조종자 준수사항으로 옳지 않은 것은 무엇인가?', 4, 4, [
        '사람이 많은 곳에서 위협적으로 비행하지 않는다.',
        '드론에서 물건을 낙하하지 않는다.',
        '비행허가 없이 제한구역이나 야간 비행을 하지 않는다.',
        '사고가 발생할 경우 현장을 신속히 정리한다.'
      ]),
      const QuizShort('초경량 비행장치 무인멀티콥터의 비행고도는 최대 몇 m까지인가?', '150', TextInputType.number)
    ],[ // 항공역학
      const QuizChoice('프로펠러가 6개인 드론을 무엇이라고 하는가?', 3, 4, [
        '트라이콥터', '쿼드콥터', '헥사콥터', '옥타콥터'
      ]),
      const QuizOX('최대이륙중량 2kg 이상인 완구용 드론은 안전인증검사가 필요하다.', false),
    ],
  ];
}