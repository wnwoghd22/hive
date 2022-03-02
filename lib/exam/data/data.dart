﻿import 'package:flutter/cupertino.dart';
import 'package:hive/quiz/data/quiz.dart';

class ExamData {
  static const List<List<Quiz>> data = [
    [ // set 1
      QuizChoice('주간에 산 사면이 햇빛을 받아 온도가 상승하여 산 사면을 타고 올라가는 바람을 무엇이라 하는가?',
      1, 4, [ '산풍', '곡풍', '육풍', '푄 현상' ]),
      QuizChoice('다음 중 항공법의 목적과 관계없는 것은?',
      1, 4, [ 
        '항공 운송 사업의 통제',
        '항공 항행의 안전도모', 
	      '항공시설 설치·관리의 효율화',
	      '항공의 발전과 복리증진'
      ]),
      QuizChoice('정압을 이용하는 계기가 아닌 것은?',
      1, 4, [ '속도계', '고도계', '선회계', '승강계' ]),
      QuizChoice('공기의 온도가 증가하면 기압이 낮아지는 이유는?',
      1, 4, [ 
        '가열된 공기는 가볍기 때문이다.',
        '가열된 공기는 무겁기 때문이다.',
	      '가열된 공기는 유동성이 있기 때문이다.',
	      '가열된 공기는 유동성이 없기 때문이다.'
      ]),
      QuizChoice('따뜻한 해수면 위를 덮고 있던 기단이 차가운 해면으로 이동했을 때 발생하는 안개는?',
      1, 4, [ '방사 안개','활승 안개', '증기 안개', '바다 안개' ]),
      QuizChoice('다음 중 대기권에서 전리층이 존재하는 곳은?',
      1, 4, [ '중간권','열권', '극외권', '성층권' ]),
      QuizChoice('다음 중 보퍼트 풍력계급에 대한 설명으로 옳지 않은 것은?',
      1, 4, [ 
        '영국의 해군 제독 보퍼트가 만든 풍력등급이다.',
        '풍속계가 만들어지기 이전 0부터 12까지 13개의 등급으로 바람의 속력을 측정했다.',
	      '0은 고요한 상태로 숫자가 커질수록 풍력이 강하다.',
	      '해상용으로 많이 쓰이며 육상용으로는 거의 쓰이지 않는다.'
      ]),
      QuizChoice('비행성능에 영향을 주는 요소들을 틀리게 설명한 것은?',
      1, 4, [ 
        '공기밀도가 낮아지면 엔진 출력이 나빠지고 프로펠러 효율도 떨어진다.',
        '습도가 높으면 공기밀도가 낮아져 양력 발생이 감소된다.',
	      '습도가 높으면 밀도가 낮은 것보다 엔진 성능 및 이착륙 성능이 더욱 나빠진다.',
	      '무게가 증가하면 이착륙 시 활주 거리가 길어지고 실속속도도 증가한다.'
      ]),
      QuizChoice('대기권을 고도에 따라 낮은 곳부터 높은 곳까지 순서대로 분류한 것은?',
      1, 4, [ 
        '대류권-성층권-열권-중간권',
        '대류권-중간권-열권-성층권',
	      '대류권-중간권-성층권-열권',
	      '대류권-성층권-중간권-열권'
      ]),
      QuizChoice('베르누이 정리에서 유체의 속도와 압력과의 관계는?',
      1, 4, [ 
        '유체의 속도가 빨라지면 정압이 감소한다.',
        '유체의 속도가 빨라지면 정압이 증가한다.',
        '유체의 속도가 빨라지면 동압이 감소한다.',
        '유체의 속도가 빨라지면 전압이 감소한다.',
      ]),
      QuizChoice('배터리를 떼어낼 때의 순서는?',
      1, 4, [ 
        '아무렇게나 떼어내도 무방하다.',
        '동시에 떼어낸다.',
        '+극을 먼저 떼어낸다.',
        '-극을 먼저 떼어낸다.',
      ]),
      QuizChoice('초경량비행장치 자격증명 취소 사유가 아닌 것은?',
      1, 4, [ 
        '자격증을 분실한 후 1년이 경과하도록 분실 신고를 하지 않은 경우',
        '항공법을 위반하여 벌금 이상의 형을 선고 받은 경우',
        '고의 또는 중한 과실이 있는 경우',
        '항공법에 의한 명령에 위반한 경우',
      ]),
      QuizChoice('다음 공역 중 통제공역에 해당되는 것은?',
      1, 4, [ '정보구역', '비행금지구역', '군 작전구역', '관제구', ]),
      QuizChoice('리튬폴리머 배터리 사용상의 설명으로 적절한 것은?',
      1, 4, [ 
        '비행 후 배터리 충전은 상온까지 온도가 내려간 상태에서 실시한다.',
        '수명이 다 된 배터리는 그냥 쓰레기들과 같이 버린다.',
        '여행 시 배터리는 화물로 가방에 넣어서 운반이 가능하다.',
        '가급적 전도성이 좋은 금속 탁자 등에 두어 보관한다.',
      ]),
      QuizChoice('초경량비행장치 사고를 보고해야 할 의무가 있는 자는?',
      1, 4, [ '부조종자', '사고 목격자', '정비사', '조종자 및 비행장치의 소유자', ]),
      QuizChoice('안전성인증검사를 받지 않은 초경량비행장치를 사용하여 초경량비행장치 조종자 증명을 받지 않고 비행하다 적발되었을 경우 부과되는 과태료는?',
      1, 4, [ '200만원 이하', '400만원 이하', '500만원 이하', '1000만원 이하', ]),
      QuizChoice('초경량비행장치 조종자 전문교육기관 지정 기준으로 맞는 것은?',
      1, 4, [ 
        '비행시간 100시간 이상인 지도 조종자 1명 이상 보유',
        '비행시간 300시간 이상인 지도 조종자 2명 이상 보유',
        '비행시간 200시간 이상인 지도 조종자 1명 이상 보유',
        '비행시간 300시간 이상인 지도 조종자 2명 이상 보유',
      ]),
      QuizChoice('초경량비행장치의 자격시험 응시자격 연령은?',
      1, 4, [ '만 14세 이상', '만 16세 이상', '만 18세 이상', '만 20세 이상', ]),
      QuizChoice('영각(받음각)이 커지면 풍압 중심은 일반적으로 어떻게 되는가?',
      1, 4, [ 
        '기류의 상태에 따라 전면이나 뒷전 쪽으로 이동한다.',
        '풍압 중심은 영각에 무관하게 일정한 위치가 된다.',
        '앞전 쪽으로 이동한다.',
        '뒷전 쪽으로 이동한다.',
      ]),
      QuizChoice('초경량비행장치의 항공기 통행 우선순위로 맞는 것은?',
      1, 4, [ 
        '모든 항공기와 초경량 무동력비행장치에 진로를 양보해야 한다.',
        '항공기보다 우선하며 초경량 무동력비행장치에 진로를 양보해야 한다.',
        '초경량 무동력비행장치보다 우선하며 항공기에 진로를 양보해야 한다.',
        '모든 항공기와 초경량 무동력비행장치보다 진로에 우선권이 있다.',
      ]),
      QuizChoice('항공기 신고(등록)기호표의 크기는?',
      1, 4, [ 
        '가로 7cm, 세로 5cm',
        '가로 5cm, 세로 7cm',
        '가로 7cm, 세로 4cm',
        '가로 4cm, 세로 7cm',
      ]),
      QuizChoice('초경량비행장치의 변경신고는 사유 발생일로부터 며칠 이내에 신고하여야 하는가?',
      1, 4, [ '30일', '60일', '90일', '180일', ]),
      QuizChoice('항공기의 세로 안정성에 대한 설명 중 틀린 것은?',
      1, 4, [ 
        '무게 중심위치가 공기역학적 중심보다 전방에 위치할수록 안정성이 증가한다.',
        '날개가 무게중심 위치보다 높은 위치에 있을 때 안정성이 좋다.',
        '꼬리날개 면적을 크게 하면 안정성이 좋다.',
        '꼬리날개 효율을 작게 할수록 안정성이 좋다.',
      ]),
      QuizChoice('국토교통부 장관이 정하는 초경량비행장치를 사용하여 비행하고자 하는 자는 자격증명이 있어야 한다. 다음 중 초경량동력비행장치의 조종 자격증명을 발행하는 기관으로 맞는 것은?',
      1, 4, [ '항공안전본부', '지방항공청', '교통안전공단', '국토교통부', ]),
      QuizChoice('항공종사자의 혈중 알코올농도 제한 기준으로 맞는 것은?',
      1, 4, [ 
        '혈중 알코올 농도 0.02% 이상',
        '혈중 알코올 농도 0.06% 이상',
        '혈중 알코올 농도 0.03% 이상',
        '혈중 알코올 농도 0.05% 이상',
      ]),
      QuizChoice('대기권 중 기상 변화가 일어나는 층으로 상승할수록 온도가 강하되는 층은 다음 중 어느 것인가?',
      1, 4, [ '성층권', '중간권', '열권', '대류권' ]),
      QuizChoice('기압고도(Pressure altitude)란 무엇을 말하는가?',
      1, 4, [ 
        '항공기의 지표면의 실측 높이이며 AGL 단위를 사용한다.',
        '고도계 수정치를 표준 기압(29.92inHg)에 맞춘 상태에서 고도계가 지시하는 고도이다.',
        '기압고도에서 비표준 온도와 기압을 수정해서 얻은 고도이다.',
        '고도계를 해당 지역이나 인근 공항의 고도계 수정치 값에 수정했을 때 고도계가 지시하는 고도이다.',
      ]),
      QuizChoice('초경량비행장치의 운용시간은 언제부터 언제까지인가?',
      1, 4, [ 
        '일출부터 일몰 30분 전까지',
        '일출부터 일몰까지',
        '일출 30분 후부터 일몰까지',
        '일출 30분 후부터 일몰 30분 전까지',
      ]),
      QuizChoice('다음 중 항공장애등의 종류가 아닌 것은?',
      1, 4, [ '저광도 항공장애등', '중광도 항공장애등', '고광도 항공장애등', '주간 장애표식', ]),
      QuizChoice('날개의 받음각에 대한 다음 설명 중 틀린 것은?',
      1, 4, [ 
        '비행 중 받음각은 변한다.',
        '날개골에 흐르는 공기의 흐름 방향과 시위선이 이루는 각이다.',
        '받음각이 증가하면 일정한 각까지 양력과 항력이 증가한다.',
        '기체의 중심선과 날개의 시위선이 이루는 각이다.',
      ]),
      QuizChoice('초경량동력비행장치를 사용하면서 법으로 정한 보험에 가입하여야 하는 경우는 어느 것인가?',
      1, 4, [ 
        '영리목적으로 사용하는 동력비행장치',
        '동호인이 공동으로 사용하는 패러글라이더',
        '국제대회에서 사용하고자 하는 행글라이더',
        '모든 초경량비행장치',
      ]),
      QuizChoice('무인비행장치 운용에 따라 조종자가 작성할 문서가 아닌 것은?',
      1, 4, [ '비행훈련기록부', '항공기이력부', '조종자 비행기록부', '정기검사 기록부', ]),
      QuizChoice('다음에 열거한 것은 항력의 종류이다. 초경량 동력비행장치에서 발생하지 않는 항력은 어느 것인가?',
      1, 4, [ '조파항력', '압력항력', '유도항력', '조파항력' ]),
      QuizChoice('겨울에는 대륙에서 해양으로, 여름에는 해양에서 대륙으로 부는 바람을 무엇이라 하는가?',
      1, 4, [ '편서풍', '계절풍', '해풍', '대륙풍' ]),
      QuizChoice('초경량비행장치로 비행 중 정면 또는 이와 유사하게 접근하는 다른 초경량비행장치를 발견하였다. 적절한 비행방법으로 맞는 것은?',
      1, 4, [
        '지면에 충돌 위험이 없는 범위 내에서 상대 비행장치의 아래쪽으로 진행하여 교차한다.',
        '상대 비행장치가 나의 왼쪽으로 기수를 바꿀 것이므로 나는 오른쪽으로 기수를 바꾼다.',
        '상대 비행장치의 진로 변경을 알 수 없으므로 상대 비행장치가 기수를 바꿀 때까지 현재 상태를 유지한다.',
        '상대 비행장치의 진로를 신속히 파악하여 같은 진로로 기수를 변경한다.',
      ]),      
      QuizChoice('빠른 한랭전선이 온난전선에 따라붙어 합쳐서 중복된 부분을 무슨 전선이라 부르는가?',
      1, 4, [ '정체전선', '대류성 한냉전선', '북태평양 고기압', '폐색전선' ]),
      QuizChoice('무인비행장치 조종자로서 갖추어야 할 소양이라 할 수 없는 것은?',
      1, 4, [ '정신적 안정성과 성숙도', '정보처리 능력', '다혈질적 성격', '빠른 상황판단 능력' ]),
      QuizChoice('다음 중 초경량비행장치가 비행하고자 할 때의 설명으로 맞는 것은?',
      1, 4, [
        '주의 공역은 지방항공청장의 비행계획 승인만으로 비행 가능하다.',
        '통제 공역의 비행계획 승인을 신청할 수 없다.',
        '관제공역, 통제공역, 주의공역은 관할 기관의 승인이 있어야 한다.',
        'CATA(Civil Aircraft Training Area)는 비행승인 없이 비행 가능하다.',
      ]),
      QuizChoice('공기밀도는 습도와 기압이 변화하면 어떻게 되는가?',
      1, 4, [
        '공기밀도는 기압에 비례하며 습도에 반비례한다.',
        '공기밀도는 기압과 습도에 비례하며 온도에 반비례한다.',
        '공기밀도는 온도에 비례하고 기압에 반비례한다.',
        '온도와 기압의 변화는 공기밀도와는 무관하다.',
      ]),
      QuizChoice('무인비행장치들이 가지는 비행 모드가 아닌 것은 어느 것인가?',
      1, 4, [
        '수동 모드(Manual Mode)',
        'GPS모드(GPS Mode)',
        '자세제어 모드(Attitude Mode)',
        '고도제어 모드(Altitude Mode)',
      ]),
    ],
    [ // set 2
      QuizChoice('다음 초경량비행장치 중 인력 활공기에 해당하는 것은?',
      1, 4, [ '비행선', '패러플레인', '행글라이더', '자이로플레인' ]),
      QuizChoice('무인비행장치 비행모드 중에서 자동복귀에 대한 설명으로 맞는 것은?',
      1, 4, [
        '자동으로 자세를 잡아주면서 수평을 유지시켜주는 비행모드이다.',
        '자세제어에 GPS를 이용한 위치제어가 포함되어 위치와 자세를 잡아준다.',
        '설정된 경로에 따라 자동으로 비행하는 비행모드이다.',
        '비행 중 통신 두절 상태가 발생했을 때 이륙 위치나 이륙 전 설정한 위치로 자동 복귀한다.',
      ]),
      QuizChoice('착빙(icing)에 대한 설명 중 틀린 것은?',
      1, 4, [
        '양력과 무게를 증가시켜 추진력을 감소시키고 항력은 증가시킨다.',
        '거친 착빙도 항공기 날개의 공기 역학에 심각한 영향을 줄 수 있다.',
        '착빙은 날개뿐만 아니라 카뷰레터(기화기), 피토관 등에도 발생한다.',
        '습한 공기가 기체 표면에 부딪치면서 결빙이 발생하는 현상이다.',
      ]),
      QuizChoice('항공기가 일정고도에서 등속수평비행을 하고 있다. 맞는 조건은?',
      1, 4, [
        '양력=항력, 추력>중력',
        '양력=중력, 추력=항력',
        '추력>항력, 양력>중력',
        '추력=항력, 양력<중력',
      ]),
      QuizChoice('다음 중 무인동력장치 Mode2의 수직하강을 위한 올바른 설명은?',
      1, 4, [
        '왼쪽 조종간을 올린다.',
        '왼쪽 조종간을 내린다.',
        '엘리베이터 조종간을 올린다.',
        '에일러론 조종간을 조정한다.',
      ]),
      QuizChoice('국제민간항공기구(ICAO)에서 공식용어로 사용하는 무인항공기 용어는?',
      1, 4, [ 'Drone', 'UAV', 'RPV', 'RPAS' ]),
      QuizChoice('다음 공역 중 주의공역이 아닌 것은?',
      1, 4, [ '훈련구역', '비행제한구역', '위험구역', '경계구역' ]),
      QuizChoice('1마력은 ⓐ의 물체를 중력가속도를 거슬러서 1m/s의 속도로 들어올리고 있을 때 물체에 대한 일률이다. ⓐ에 들어갈 내용으로 옳은 것은?',
      1, 4, [ '30kg', '50kg' , '75kg' , '90kg' ]),
      QuizChoice('국토교통부장관에게 소유신고를 하지 않아도 되는 장치는?',
      1, 4, [ '동력비행장치', '초경량 헬리콥터', '초경량 자이로플레인', '계류식 무인비행장치' ]),
      QuizChoice('우리나라에 영향을 미치는 기단 중에서 초여름 해양성 기단으로 불연속의 장마전선을 이루는 기단은?',
      1, 4, [ '시베리아 기단', '양쯔강 기단', '오호츠크해 기단', '북태평양 기단' ]),
      QuizChoice('초경량비행장치의 비행계획승인 신청 시 포함되지 않는 것은?',
      1, 4, [
        '비행경로 및 고도',
        '동승자의 자격 소지',
        '조종자의 비행경력',
        '비행장의 종류 및 형식',
      ]),
      QuizChoice('해수면에서의 표준 온도와 표준 기압은?',
      1, 4, [
        '15℃, 29.92inchHg',
        '59℉, 29.92inchHg',
        '15℉, 1013.2inchHg',
        '15℃, 1013.2inchHg',
      ]),
      QuizChoice('다음 중 초경량비행장치의 비행 가능한 지역은 어느 것인가?',
      1, 4, [ 'R-14', 'UA', 'MOA', 'P65' ]),
      QuizChoice('표준대기 상태에서 해수면 상공 1000ft당 상온의 기온은 몇 도씩 감소하는가?',
      1, 4, [ '1℃', '2℃', '3℃', '4℃', ]),
      QuizChoice('태풍의 세력이 약해져서 소멸되기 직전 또는 소멸되어 무엇으로 변하는가?',
      1, 4, [ '열대성 고기압', '열대성 저기압', '열대성 폭풍', '편서풍', ]),
      QuizChoice('북태평양 서부에서 발생하는 열대 저기압 중에서 중심 부근의 최대 풍속이 17m/s 이상으로 강한 폭풍우를 동반하는 자연현상은?',
      1, 4, [ '장마', '사이클론', '허리케인', '태풍' ]),
      QuizChoice('다음 중 토크작용과 관련된 뉴턴의 법칙은?',
      1, 4, [ '관성의 법칙', '가속도의 법칙', '작용과 반작용의 법칙', '베르누이 법칙' ]),
      QuizChoice('다음 중 초경량무인비행장치 비행허가 승인에 대한 설명으로 틀린 것은?',
      1, 4, [
        '비행금지구역(P-73, P-61) 비행허가는 군에 받아야 한다.',
        '공역이 두 개 이상 겹칠 때는 우선하는 기관에만 허가를 받으면 된다.',
        '군 관제권 지역의 비행허가는 군에서 받아야 한다.',
        '민간 관제권 지역의 비행허가는 국토부의 비행승인을 받아야 한다.',
      ]),
      QuizChoice('초경량비행장치 운용 시 다음 중 과태료로 가장 높은 것은?',
      1, 4, [
        '장치신고, 멸실신고 및 변경신고를 하지 않을 경우',
        '조종자 증명 없이 비행한 경우',
        '조종자 비행준수사항을 위반한 경우',
        '안전성 인증검사를 받지 않고 비행한 경우',
      ]),
      QuizChoice('다음 중 자세를 잡기 위해 모터의 속도를 조종하는 장치는 무엇인가?',
      1, 4, [ 'ESC', 'GPS', '자이로센서', '가속도센서' ]),
      QuizChoice('날개골의 임의의 지점에 중심을 잡고 받음각에 변화를 주면 기수를 들고 내리게 하는 피칭모멘트가 발생한다. 이 모멘트 값이 받음각에 관계없이 일정한 지점은 무엇인가?',
      1, 4, [ '압력중심', '공력중심', '무게중심', '평균공력시위' ]),
      QuizChoice('비행정보구역(FIR)을 지정하는 목적과 거리가 먼 것은?',
      1, 4, [
        '영공통과료 징수를 위한 경계 설정',
        '항공기 수색, 구조에 필요한 정보 제공',
        '항공기 안전을 위한 정보 제공',
        '항공기의 효율적인 운항을 위한 정보 제공',
      ]),
      QuizChoice('기압고도란 무엇을 말하는가?',
      1, 4, [
        '항공기와 지표면의 실측 높이이며, AGL 단위를 사용한다.',
        '고도계 수정치를 표준기압에 맞춘 상태에서 고도계가 지시하는 고도이다.',
        '기압고도에서 비표준온도와 기압을 수정해서 얻은 고도이다.',
        '고도계를 해당지역이나 인근 공항의 고도계 수정치 값에 수정했을 때 고도계가 지시하는 고도이다.',
      ]),
      QuizChoice('태풍이 발생하는 조건으로 알맞은 것은 어느 것인가?',
      1, 4, [ '열대성 저기압', '열대성 고기압', '열대성 폭풍', '편서풍' ]),
      QuizChoice('멀티콥터 착륙지점으로 바르지 않은 것은?',
      1, 4, [
        '고압선이 없고 평평한 지역',
        '바람에 날아가는 물체가 없는 평평한 지역',
        '평평한 해안 지역',
        '평평하면서 경사진 곳',
      ]),
      QuizChoice('비교적 구름 밑면이 일정하고 안개, 세빙, 가루눈이 내리기도 하는 6500ft이하에서 발생하는 회색의 구름은?',
      1, 4, [ '권층운',' 고층운', '적운', '층운' ]),
      QuizChoice('해풍의 특징으로 적당한 것은 무엇인가?',
      1, 4, [
        '주간에 바다에서 육지로 분다.',
        '야간에 바다에서 육지로 분다.',
        '주간에 육지에서 바다로 분다.',
        '야간에 육지에서 바다로 분다.',
      ]),
      QuizChoice('다음은 어떤 안개에 대한 설명인가? : 차가운 지면이나 수면 위로 따뜻한 공기가 이동해 오면, 공기의 밑부분이 냉각되어 응결이 일어나는 안개이다. 대부분 해안이나 해상에서 발생한다.',
      1, 4, [ '활승안개', '복사안개', '이류안개', '증기안개' ]),
      QuizChoice('비행승인을 받기 위해 필요하지 않은 것은 어느 것인가?',
      1, 4, [
        '비행경로와 고도',
        '조종자의 비행경력',
        '비행장치의 재원',
        '조종자의 자격증 소지 유무',
      ]),
      QuizChoice('무인멀티콥터가 비행 가능한 지역은 어느 것인가?',
      1, 4, [
        '인파가 많고 차량이 많은 곳',
        '전파 수신이 많은 지역',
        '전기줄 및 장애물이 많은 곳',
        '장애물이 없고 안전한 곳',
      ]),
      QuizChoice('블레이드 종횡비의 비율이 커지면 나타나는 현상이 아닌 것은 무엇인가?',
      1, 4, [
        '유해항력이 증가한다.',
        '활공성능이 좋아진다.',
        '유도항력이 감소한다.',
        '양항비가 작아진다.',
      ]),
      QuizChoice('영(0)양력 받음각에 대한 설명 중 맞는 것은?',
      1, 4, [
        '실속이 발생할 때의 받음각',
        '실속이 발생하지 않을 때의 받음각',
        '양력이 발생할 때의 받음각',
        '양력이 발생하지 않을 때의 받음각',
      ]),
      QuizChoice('어떠한 조건하에서 진고도(True Altitude)는 지시고도보다 낮게 지시하는가?',
      1, 4, [
        '표준공기 온도보다 추울 때',
        '표준공기 온도보다 더울 때',
        '밀도고도가 지시고도보다 높을 때',
        '기압고도와 밀도고도가 일치할 때',
      ]),
      QuizChoice('초경량비행장치 비행 중 조작불능 시 가장 먼저 할 일은?',
      1, 4, [
        '소리를 크게 쳐서 알린다.',
        '조종자 가까이 이동시켜 착륙시킨다.',
        '조종이 가능할 때까지 기다린다.',
        '급하게 불시착시킨다.',
      ]),
      QuizChoice('비행금지구역, 제한구역, 위험구역 설정 등의 공역을 제공하는 곳은?',
      1, 4, [
        'NOTAM',
        'AIC',
        'AIP',
        'AIRAC',
      ]),
      QuizChoice('북반구의 고기압 바람의 방향으로 옳은 것은?',
      1, 4, [
        '시계방향으로 중심부에서 수렴한다.',
        '반시계방향으로 중심부에서 수렴한다.',
        '시계방향으로 중심부에서 발산한다.',
        '반시계방향으로 중심부에서 발산한다.',
      ]),
      QuizChoice('초경량비행장치 주소변경 신고 기한은?',
      1, 4, [ '10일', '15일', '30일', '60일' ]),
      QuizChoice('다음 중 3/8 ~ 4/8인 운량은 어느 것인가?',
      1, 4, [ 'clear', 'scattered', 'broken', 'overcast' ]),
      QuizChoice('초경량비행장치 사고발생시 사고조사를 담당하는 기관은?',
      1, 4, [
        '관할 지방항공청장',
        '항공교통관제소',
        '교통안전공단',
        '항공·철도 사고조사위원회',
      ]),
      QuizChoice('멀티콥터의 필수 구성요소가 아닌 것은?',
      1, 4, [
        'FC(Flight Controller)',
        'ESC(Electric Speed Controller)',
        'Propeller',
        'GPS(Global Positioning System)',
      ]),
    ]
  ];
}