﻿import 'package:flutter/cupertino.dart';
import 'package:hive/quiz/data/quiz.dart';

class QuizData {
  static const List<List<Quiz>> data = [
    [ // 드론 기초
      QuizChoice('프로펠러가 6개인 드론을 무엇이라고 하는가?', 3, 4, [
        '트라이콥터', '쿼드콥터', '헥사콥터', '옥타콥터'
      ]),
      QuizMultiChoice('드론 센서에 대한 설명으로 옳은 것을 모두 고르시오.',
          [ false, true, true, false, true ],
          5,
          [
            '가속도 센서는 기체의 기울어짐을 측정한다.',
            '기압 센서는 기체의 높이를 유지하도록 해준다.',
            '가속도 센서와 각속도 센서를 합쳐 IMU라고 부르기도 한다.',
            'GPS 수신기는 기체의 방향을 측정한다.',
            'GPS 수신기는 최소 3개 이상의 인공위성을 통해 기체의 좌표를 읽어들인다.'
          ]),
      QuizChoice('드론의 부품 중 FC의 설명으로 옳은 것을 고르시오.', 2, 3, [
        '각 모터에 전달될 전압을 고르게 분배한다.',
        '조종자의 입력과 센서 신호 등을 종합해 드론의 비행 상태를 제어한다.',
        '자세제어 모드로 조종하는 경우 필요하지 않다.',
      ]),
      QuizOX('회전익 비행장치만 드론에 해당된다.', false),
      QuizShort('3.7v 셀 6개를 3S2P로 연결할 경우 배터리 전압은 몇 v인가?', '11.1', TextInputType.number),
      QuizMultiChoice('배터리에 대한 설명으로 틀린 것을 모두 고르시오.',
        [ false, true, false, true ],
        4, [
        'Li-Po 배터리는 주변 온도가 낮을수록 전기전도성이 높아져 성능이 향상된다.',
        '1차 전지와 2차 전지를 구분하는 기준은 재사용 가능 여부이다.',
        '배터리를 사용하지 않고 장기간 보관할 경우 방전되지 않도록 완전히 충전해 둔다.',
        'Li-Po 배터리는 과충전할 경우 부풀어 오를 수 있다.'
      ]),
      QuizChoice('모터에 대한 설명으로 틀린 것은?', 2, 4, [
        '브러시 모터는 마찰이 크게 발생하여 수명이 짧다.',
        '브러시리스 모터는 변속기가 필요하지 않다.',
        '드론에 쓰이는 모터는 일반적으로 브러시리스 모터이다.',
        '브러시리스 모터는 브러시 모터에 비해 제작 과정이 복잡하다.'
      ]),
    ],
    [ // 항공기상
      QuizOX('습도가 높아지면 프로펠러에서 발생하는 양력이 증가한다.', false),
    ],
    [ // 항공법규
      QuizOX('최대이륙중량 2kg 이상인 완구용 드론은 안전인증검사가 필요하다.', false),
      QuizChoice('조종자 준수사항으로 옳지 않은 것은 무엇인가?', 4, 4, [
        '사람이 많은 곳에서 위협적으로 비행하지 않는다.',
        '드론에서 물건을 낙하하지 않는다.',
        '비행허가 없이 제한구역이나 야간 비행을 하지 않는다.',
        '사고가 발생할 경우 현장을 신속히 정리한다.'
      ]),
      QuizShort('초경량 비행장치 무인멀티콥터의 비행고도는 최대 몇 m까지인가?', '150', TextInputType.number),
      QuizChoice('안정성인증검사 대상 기체를 검사 없이 비행한 경우 1차 위반 과태료는 얼마인가?', 4, 4, [
        '15만원',
        '150만원',
        '200만원',
        '250만원'
      ]),
      QuizChoice('법령, 규정, 절차 및 시설 등의 변경이 장기간 예상되는 설명과 조언 정보를 통지하는 것은 무엇인가?', 1, 4, [
        '항공정보회람(AIC)',
        '항공정보간행물(AIP)',
        'AIRAC',
        '항공고시보(NOTAM)'
      ]),
      QuizChoice('국토교통부장관이 정하여 고시한 국내의 무인비행장치 비행공역 내 수직고도 범위는?', 1, 4, [
        '지상~500피트 AGL',
        '지상~500피트 MSL',
        '지상~300피트 AGL',
        '지상~300피트 MSL',
      ]),
      QuizChoice('항공사업법의 벌칙 중 성격이 다른 하나를 고르시오.', 2, 4, [
        '폐업 정상절차를 위반하여 폐업하거나 폐업신고를 하지 아니한 경우', // 과태료
        '명의대여 등의 금지를 위반하여 초경량비행장치의 사용사업을 한 경우', // 1년 이하 징역 또는 1천만 원 이하 벌금
        '보험 또는 공제에 가입하지 아니하고 초경량비행장치를 사용하여 비행한 경우', //과태료
        '요금표를 갖추어 두지 않거나 거짓사항을 적은 요금표를 갖춘 경우', //항공사업법상 500만 이하 과태료
      ]),
      QuizChoice('다음 비행장치 중 사용하기 위해서 신고가 필요한 장비는?', 1, 4, [
        '항공레저스포츠사업에 사용하는 낙하산류',
        '행글라이더, 패러글라이더 등 동력을 이용하지 아니하는 비행장치',
        '계류식 무인비행장치',
        '연구기관 등이 시험, 조사, 연구 또는 개발을 위하여 제작한 초경량비행장치'
      ]),
      QuizMultiChoice('통행 우선순위에 대한 설명으로 옳은 것을 모두 고르시오.', 
      [ false, true, false, true ], 4, [
        '기구류는 활공기에 진로를 양보해야 한다.', // 활공기가 기구류에 양보해야 한다
        '비행기는 물건을 예항하는 다른 비행기에 진로를 양보해야 한다.',
        '착륙을 위해 접근 중인 활공기는 낮은 고도에 있는 비행선에 진로를 양보해야 한다.', // 활공기에 우선권이 있다
        '동일 성능의 항공기가 서로 접근하는 경우 우측 항공기에 우선권이 있다.'
      ]),
      QuizChoice('진로 우선순위 순으로 바른 것은?\nⓐ 지상에 있어서 운행중의 항공기\nⓑ착륙을 위하여 최종 접근 중인 항공기\nⓒ착륙의 조작을 행하고 있는 항공기\nⓓ비행중인 항공기.', 
      2, 4, [
        'd - c - a - b',
        'c - b - a - d',
        'b - c - a - d',
        'b - a - c - d',
      ]),
      QuizChoice('항공사업법 상 무인비행장치 사용사업을 위해 가입해야하는 필수 보험은?', 
      4, 4, [ '자손종합보험', '기체보험', '살포보험', '대인/대물 배상 책임보험' ]),
      QuizChoice('초경량비행장치 신고번호를 발급하는 기관은 어느 곳인가?', 
      1, 4, [ '한국교통안전공단', '국토교통부', '지방항공청', '국방부' ]),

    ],
    [ // 항공역학
      QuizChoice('드론에 작용하는 힘 중 프로펠러로 발생하지 않는 것은?', 3, 4, [
        '추력', '항력', '중력', '양력'
      ]),
      QuizOX('드론이 지면에 가까울 경우 양력이 더 커진다.', true),
      QuizChoice('지면효과를 받을 때의 설명 중 틀린 것은?, 2, 4, [
        '동일 출력으로 더 큰 부하를 지탱한다.',
        '항력의 크기가 증가한다.',
        '받음각이 증가한다.',
        '양력의 크기가 증가한다.',
      ]),

    ],
    [ // 항공안전법
      QuizChoice('항공안전법은 ㉠에서 채택된 표준과 방식에 따라 항공기가 안전하게 항행하기 위한 방법을 정한다. ㉠에 들어갈 말은?', 2, 4, [
        '국제민간항공협약',
        '국제민간항공협약 및 같은 협약의 부속서',
        '국제항공운송협정',
        '국제항공운송협정 및 같은 협정의 부속서'
      ]),
    ]
  ];
}